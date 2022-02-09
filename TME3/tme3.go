package main

import (
	"bufio"
	"fmt"
	"time"
  "os"
  "log"
	"strings"
	"strconv"
)
const NBWORKER int = 3

type paquet struct{
  depart string
  arrivee string
  arret int

}

type info struct{ // pour transmettre au calculateur le paquet a modifier ainsi que le canal sur lequel le renvoyer
  p paquet
  c chan paquet
}

func lecteur(LECTURE chan string ) { // lecteur qui lit dans le fichier
  file, err :=os.Open("stop_times.txt")
  if err != nil {
    log.Fatal(err)
  }
  defer file.Close()

  scanner := bufio.NewScanner(file)
	scanner.Scan()		// Pour sauter la première ligne qui ne contient pas de valeur
  for scanner.Scan(){
		//fmt.Println("Je lis une ligne")
    LECTURE<-scanner.Text()
  }
  if err := scanner.Err(); err != nil {
    log.Fatal(err)
}

}

func travailleurs(LECTURE chan string, CALchan chan info, REDchan chan paquet ) {  // travailleurs
  for{
		ligne:=<-LECTURE // écoute ce que le lecteur envoi sur le canal et le met dans la variable ligne
  	donnees:=strings.Split(ligne,",") // création d'un tableau pour separer chaque element de ligne
		arr := strings.Split(donnees[1], ":") // On va modier la structure de depart et arrivée pour pouvoir parser apres
		dep := strings.Split(donnees[2], ":")

		paq:=paquet{arrivee : arr[0] + "h" + arr[1] + "m", depart : dep[0] + "h" + dep[1] + "m", arret : 0}// on créé un paquet et on rajoute une date lambda pour pouvoir ensuite parser
  	CAN:=make(chan paquet)// création du canal local du travailleur
  	message:=info{p : paq, c : CAN} // création d'un message qui contient le paquet ainsi que son canal local
  	CALchan<-message // on envoit ce message sur le canal du calculateur
		resultat:=<-CAN // on recupère le paquet que le calculateur a renvoyé sur le canal local
		REDchan<-resultat// et on l'envoie au reducteur
	}

}

func calculateur(CALchan chan info){
	for{
		mess:=<-CALchan // le calculateur récupère dans son canal un message envoyé par un travailleur
		arr, _ := time.ParseDuration(mess.p.arrivee) // On parse grâce au format "00h00m00s" fait dans le travailleur
		dep, _ := time.ParseDuration(mess.p.depart)
		duree:=int( (dep - arr).Seconds()) // Calcul du temps d'arrêt
		//fmt.Println(duree)
		newpaquet:=mess.p // Transmission du paquet modifié dans le canalprivé du travailleur
		newpaquet.arret=duree
		mess.c<-newpaquet
	}

}

func reducteur(REDchan chan paquet,FIN chan int, MAINchan chan int ){
	var tempsacc int =0 // accumulateur des temps d'arret
	var nbpaq int =0// nb de paquet
	for{
		select{
		case paq := <-REDchan: // Si on it sur le canal du reducteur alors on ajout le temps et +1 paquet
			tempsacc = tempsacc + paq.arret
			nbpaq = nbpaq +1
		case <-FIN: // Si on lit sur le canal de fin on calcul la moyenne et on la renvoit dans le main
			fmt.Println(tempsacc,nbpaq)
			moyenne:= tempsacc / nbpaq
			MAINchan<-moyenne
			return

		}
	}

}

func main() {

	// Création de tous les canaux nécessaires

	LECTURE:=make(chan string)
	CALchan:=make(chan info)
	REDchan:=make(chan paquet)
	FIN:=make(chan int)
	MAINchan:=make(chan int)

	// Lancement des go routines pour les travailleurs, le calculateur et le reducteur
	go func(){lecteur(LECTURE)}()

	for i := 0; i < NBWORKER; i++ {

		go func() { travailleurs(LECTURE, CALchan, REDchan) }()
	}

	go func() { calculateur(CALchan) }()

	go func() { reducteur(REDchan, FIN,MAINchan) }()

	// La durée du timer est implémentée avec un sleep et recuperé dans l'argument

	duree, _ := (strconv.Atoi(os.Args[1]))

	time.Sleep(time.Duration(duree) * (time.Millisecond))

	// Une fois le temps écoulé on écrit sur le canal de fin et on écoute sur le canal main

	FIN<-0
	res:=<-MAINchan
	fmt.Println("Moyenne des temps d'arrets :",res)




	}
