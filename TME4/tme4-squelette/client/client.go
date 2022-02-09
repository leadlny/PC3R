package main

import (
	"bufio"
	"fmt"
	"log"
	"math/rand"
	"net"
	"os"
	"regexp"
	"strconv"
	"strings"
	"time"

	st "./structures" // contient la structure Personne
	tr "./travaux"    // contient les fonctions de travail sur les Personnes
)

var ADRESSE string = "localhost"                           // adresse de base pour la Partie 2
var FICHIER_SOURCE string = "./conseillers-municipaux.txt" // fichier dans lequel piocher des personnes
var TAILLE_SOURCE int = 450000                             // inferieure au nombre de lignes du fichier, pour prendre une ligne au hasard
var TAILLE_G int = 5                                       // taille du tampon des gestionnaires
var NB_G int = 2                                           // nombre de gestionnaires
var NB_P int = 2                                           // nombre de producteurs
var NB_O int = 4                                           // nombre d'ouvriers
var NB_PD int = 2                                          // nombre de producteurs distants pour la Partie 2

var pers_vide = st.Personne{Nom: "", Prenom: "", Age: 0, Sexe: "M"} // une personne vide

type message_ligne struct {
	num   int
	ligne chan string
}

type message_proxy struct {
	ident        int
	canal_retour chan string
	methode      string
}

// paquet de personne, sur lequel on peut travailler, implemente l'interface personne_int
type personne_emp struct {
	pers          st.Personne
	statut        string
	a_faire       []func(st.Personne) st.Personne
	nligne        int
	canal_lecteur chan message_ligne
}

// paquet de personne distante, pour la Partie 2, implemente l'interface personne_int
type personne_dist struct {
	id          int
	canal_proxy chan message_proxy
}

// interface des personnes manipulees par les ouvriers, les
type personne_int interface {
	initialise()          // appelle sur une personne vide de statut V, remplit les champs de la personne et passe son statut à R
	travaille()           // appelle sur une personne de statut R, travaille une fois sur la personne et passe son statut à C s'il n'y a plus de travail a faire
	vers_string() string  // convertit la personne en string
	donne_statut() string // renvoie V, R ou C
}

// fabrique une personne à partir d'une ligne du fichier des conseillers municipaux
// à changer si un autre fichier est utilisé
func personne_de_ligne(l string) st.Personne {
	separateur := regexp.MustCompile("\u0009") // oui, les donnees sont separees par des tabulations ... merci la Republique Francaise
	separation := separateur.Split(l, -1)
	naiss, _ := time.Parse("2/1/2006", separation[7])
	a1, _, _ := time.Now().Date()
	a2, _, _ := naiss.Date()
	agec := a1 - a2
	return st.Personne{Nom: separation[4], Prenom: separation[5], Sexe: separation[6], Age: agec}
}

// *** METHODES DE L'INTERFACE personne_int POUR LES PAQUETS DE PERSONNES ***

func (p *personne_emp) initialise() {
	CANlec := make(chan string)                                    // Créer son canal pour que le lecteur lui communique sa ligne
	p.canal_lecteur <- message_ligne{num: p.nligne, ligne: CANlec} // envoie sur le canal du lecteur un message contenant son num de ligne et son canal
	ligne := <-CANlec                                              // Recupère la ligne
	p.pers = personne_de_ligne(ligne)                              // Création de la personne grâce à la ligne
	for i := 0; i < rand.Intn(5)+1; i++ {                          // Attribution de 1 à 5 tache
		p.a_faire = append(p.a_faire, tr.UnTravail())
	}
	p.statut = "R" // Modification du statut
	//fmt.Println("Initialisation d'une personne")

}

func (p *personne_emp) travaille() {
	p.pers = p.a_faire[0](p.pers)
	p.a_faire = p.a_faire[1:]
	if len(p.a_faire) == 0 {
		p.statut = "C"
	}
	//fmt.Println("Je travaille")

}

func (p *personne_emp) vers_string() string {
	var pronom string
	if p.pers.Sexe == "F" {
		pronom = "Madame "
	} else {
		pronom = "Monsieur "
	}
	return fmt.Sprint(pronom, p.pers.Prenom, " ", p.pers.Nom, " : ", p.pers.Age, " ans ")
}

func (p *personne_emp) donne_statut() string {
	return p.statut
}

// *** METHODES DE L'INTERFACE personne_int POUR LES PAQUETS DE PERSONNES DISTANTES (PARTIE 2) ***
// ces méthodes doivent appeler le proxy (aucun calcul direct)

func (p personne_dist) initialise() {
	canal_ret := make(chan string)
	messProx := message_proxy{methode: "initialise", canal_retour: canal_ret, ident: p.id}
	p.canal_proxy <- messProx
	<-canal_ret
}

func (p personne_dist) travaille() {
	canal_ret := make(chan string)
	messProx := message_proxy{methode: "travaille", canal_retour: canal_ret, ident: p.id}
	p.canal_proxy <- messProx
	<-canal_ret
}

func (p personne_dist) vers_string() string {
	canal_ret := make(chan string)
	messProx := message_proxy{methode: "vers_string", canal_retour: canal_ret, ident: p.id}
	p.canal_proxy <- messProx
	string_pers := <-canal_ret
	return string_pers
}
func (p personne_dist) donne_statut() string {
	canal_ret := make(chan string)
	messProx := message_proxy{methode: "donne_statut", canal_retour: canal_ret, ident: p.id}
	p.canal_proxy <- messProx
	statut := <-canal_ret
	return statut
}

// *** CODE DES GOROUTINES DU SYSTEME ***

// Partie 2: contacté par les méthodes de personne_dist, le proxy appelle la méthode à travers le réseau et récupère le résultat
// il doit utiliser une connection TCP sur le port donné en ligne de commande
func proxy(port string, CANproxy chan message_proxy) {
	add := ADRESSE + ":" + port
	conn, err := net.Dial("tcp", add) //Etablir une connexion
	if err != nil {
		fmt.Println("Erreur connexion")
		return
	}
	fmt.Println("Connexion")
	for {
		mess := <-CANproxy // On reçoit un message
		req := fmt.Sprint(mess.ident, ",", mess.methode)
		fmt.Fprint(conn, req)                                 // ecrit sur conn
		resultat, _ := bufio.NewReader(conn).ReadString('\n') // attend et lit le resultat sur conn
		resultat = strings.TrimSuffix(resultat, "\n")
		mess.canal_retour <- resultat // on renvoit le resultat sur le canal ede retour
		//fmt.Println(resultat)
	}
}

// Partie 1 : contacté par la méthode initialise() de personne_emp, récupère une ligne donnée dans le fichier source
func lecteur(CANlecteur chan message_ligne) {
	for {
		//fmt.Println("Lecteur")
		mess := <-CANlecteur
		file, err := os.Open(FICHIER_SOURCE)
		if err != nil {
			log.Fatal(err)
		}
		defer file.Close()

		scanner := bufio.NewScanner(file)
		scanner.Scan() // Pour sauter la première ligne qui ne contient pas de donnée
		for i := 0; i < mess.num; i++ {
			scanner.Scan()
		}
		res := scanner.Text()
		if err := scanner.Err(); err != nil {
			log.Fatal(err)
		}
		mess.ligne <- res
		file.Close()
	}

}

// Partie 1: récupèrent des personne_int depuis les gestionnaires, font une opération dépendant de donne_statut()
// Si le statut est V, ils initialise le paquet de personne puis le repasse aux gestionnaires
// Si le statut est R, ils travaille une fois sur le paquet puis le repasse aux gestionnaires
// Si le statut est C, ils passent le paquet au collecteur
func ouvrier(CANouvGestio chan personne_int, CANgestioOuv chan personne_int, CANcoll chan personne_int) {
	for {
		p_int := <-CANgestioOuv
		switch p_int.donne_statut() {
		case "V":
			p_int.initialise()
			CANouvGestio <- p_int
		case "R":
			p_int.travaille()
			CANouvGestio <- p_int
		case "C":
			CANcoll <- p_int
		}
	}

}

// Partie 1: les producteurs cree des personne_int implementees par des personne_emp initialement vides,
// de statut V mais contenant un numéro de ligne (pour etre initialisee depuis le fichier texte)
// la personne est passée aux gestionnaires
func producteur(CANlecteur chan message_ligne, CANprodGestio chan personne_int) {
	for {
		//fmt.Println("producteur")
		todo := make([]func(st.Personne) st.Personne, 0)
		p := personne_emp{nligne: rand.Intn(TAILLE_SOURCE), statut: "V", a_faire: todo, canal_lecteur: CANlecteur, pers: pers_vide}
		CANprodGestio <- personne_int(&p)
	}

}

// Partie 2: les producteurs distants cree des personne_int implementees par des personne_dist qui contiennent un identifiant unique
// utilisé pour retrouver l'object sur le serveur
// la creation sur le client d'une personne_dist doit declencher la creation sur le serveur d'une "vraie" personne, initialement vide, de statut V
func producteur_distant(CANid chan int, CANproxy chan message_proxy, CANprodGestio chan personne_int) {
	for {
		n := <-CANid
		p := personne_dist{id: n, canal_proxy: CANproxy}
		canal_ret := make(chan string)
		CANproxy <- message_proxy{ident: n, methode: "creer", canal_retour: canal_ret}
		<-canal_ret
		CANprodGestio <- p

	}
}

// Partie 1: les gestionnaires recoivent des personne_int des producteurs et des ouvriers et maintiennent chacun une file de personne_int
// ils les passent aux ouvriers quand ils sont disponibles
// ATTENTION: la famine des ouvriers doit être évitée: si les producteurs inondent les gestionnaires de paquets, les ouvrier ne pourront
// plus rendre les paquets surlesquels ils travaillent pour en prendre des autres
func gestionnaire(CANprodGestio chan personne_int, CANouvGestio chan personne_int, CANgestioOuv chan personne_int) {
	file := make([]personne_int, 0) // création de la file de personne
	for {
		switch len(file) { // On regarde ce qu'on fait par rapport à la taille de la file
		case TAILLE_G: // Si la file est remplie on envoie une personne aux ouvriers et on dépile
			CANgestioOuv <- file[0]
			file = file[1:]
		case 0: // Si la file est vide on peut écouter sur les 2 canaux
			select {
			case p_int := <-CANouvGestio:
				file = append(file, p_int)
			case p_int := <-CANprodGestio:
				file = append(file, p_int)
			}
		default:
			if len(file) < TAILLE_G/2 { // solution choisie pour gerer la famine des ouvriers d'apres Romain Demangeon
				select { // si la taille est assez petite ou va ecouter sur les 2 canaux
				case p_int := <-CANouvGestio:
					file = append(file, p_int)
				case p_int := <-CANprodGestio:
					file = append(file, p_int)
				case CANgestioOuv <- file[0]: // Dans tous les cas on va ensuite envoyer aux ouvrier puis défiler
					file = file[1:]
				}

			} else { // sinon on écoute que sur le canal des ouvriers
				select {
				case p_int := <-CANouvGestio:
					file = append(file, p_int)
				case CANgestioOuv <- file[0]:
					file = file[1:]
				}

			}
		}

	}

}

// Partie 1: le collecteur recoit des personne_int dont le statut est c, il les collecte dans un journal
// quand il recoit un signal de fin du temps, il imprime son journal.
func collecteur(CANcoll chan personne_int, FIN chan int) {
	var journal string
	for {
		//fmt.Println("coll")
		select {
		case <-FIN:
			fmt.Println("Fin du temps, voici le journal", journal) // impression du journal
			FIN <- 0                                               // pour que le main se finisse
			return
		case p := <-CANcoll:
			journal = journal + p.vers_string() + "\n" // concatenation des personnes

		}
	}

}
func generator(frais chan int) {
	compteur := 0
	for {
		frais <- compteur
		compteur++
	}
}

func main() {
	rand.Seed(time.Now().UTC().UnixNano()) // graine pour l'aleatoire
	if len(os.Args) < 3 {
		fmt.Println("Format: client <port> <millisecondes d'attente>")
		return
	}
	//port, _ := strconv.Atoi(os.Args[1])   // utile pour la partie 2
	millis, _ := strconv.Atoi(os.Args[2]) // duree du timeout

	// creer les canaux
	fintemps := make(chan int)
	CANlecteur := make(chan message_ligne)
	CANouvGestio := make(chan personne_int)
	CANgestioOuv := make(chan personne_int)
	CANprodGestio := make(chan personne_int)
	CANcoll := make(chan personne_int)
	// lancer les goroutines (parties 1 et 2): 1 lecteur, 1 collecteur, des producteurs, des gestionnaires, des ouvriers

	go func() { lecteur(CANlecteur) }()
	go func() { collecteur(CANcoll, fintemps) }()

	for i := 0; i < NB_PD; i++ {
		go func() { producteur(CANlecteur, CANprodGestio) }()
	}

	for i := 0; i < NB_G; i++ {
		go func() { gestionnaire(CANprodGestio, CANouvGestio, CANgestioOuv) }()
	}
	for i := 0; i < NB_O; i++ {
		go func() { ouvrier(CANouvGestio, CANgestioOuv, CANcoll) }()
	}

	// lancer les goroutines (partie 2): des producteurs distants, un proxy
	/*
		CANproxy := make(chan message_proxy)
		CANid := make(chan int)

		for i := 0; i < NB_PD; i++ {
			go func() { producteur_distant(CANid, CANproxy, CANprodGestio) }()
		}
		go func(port string) { proxy(port, CANproxy) }(os.Args[1])
		go func() { generator(CANid) }()
	*/
	time.Sleep(time.Duration(millis) * time.Millisecond)
	fintemps <- 0
	<-fintemps
}
