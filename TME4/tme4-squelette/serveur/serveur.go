package main

import (
	"bufio"
	"fmt"
	"math/rand"
	"net"
	"os"
	"strconv"
	"strings"

	st "../client/structures"
	tr "./travaux"
)

var ADRESSE = "localhost"

var pers_vide = st.Personne{Nom: "", Prenom: "", Age: 0, Sexe: "M"}

//Tableau d'association Identifiant -> Personne_serv
var tab = make(map[int]*personne_serv)

// type d'un paquet de personne stocke sur le serveur, n'implemente pas forcement personne_int (qui n'existe pas ici)
type personne_serv struct {
	pers    st.Personne
	nligne  int
	statut  string
	a_faire []func(st.Personne) st.Personne
}

// Strcture qui permet a gere_connection d'envoyer un message au maintener
//et qui recupere le message sur CANmaint

type message_gestio struct {
	message  string
	CANmaint chan string
}

// cree une nouvelle personne_serv, est appelé depuis le client, par le proxy, au moment ou un producteur distant
// produit une personne_dist
func creer(id int) *personne_serv {
	todo := make([]func(st.Personne) st.Personne, 0)
	p := personne_serv{pers: pers_vide, statut: "V", a_faire: todo}
	tab[id] = &p
	return &p
}

// Méthodes sur les personne_serv, on peut recopier des méthodes des personne_emp du client
// l'initialisation peut être fait de maniere plus simple que sur le client
// (par exemple en initialisant toujours à la meme personne plutôt qu'en lisant un fichier)
func (p *personne_serv) initialise() {
	p.pers = st.Personne{Nom: "Delannay", Prenom: "Lea", Sexe: "F", Age: 22}
	for i := 0; i < rand.Intn(5)+1; i++ { // Attribution de 1 à 5 tache
		p.a_faire = append(p.a_faire, tr.UnTravail())
	}
	p.statut = "R"
}

func (p *personne_serv) travaille() {
	p.pers = p.a_faire[0](p.pers)
	p.a_faire = p.a_faire[1:]
	if len(p.a_faire) == 0 {
		p.statut = "C"
		fmt.Println("terminé")
	}
}

func (p *personne_serv) vers_string() string {
	var pronom string
	if p.pers.Sexe == "F" {
		pronom = "Madame "
	} else {
		pronom = "Monsieur "
	}
	return fmt.Sprint(pronom, p.pers.Prenom, " ", p.pers.Nom, " : ", p.pers.Age, " ans ")
}

func (p *personne_serv) donne_statut() string {
	return p.statut
}

// Goroutine qui maintient une table d'association entre identifiant et personne_serv
// il est contacté par les goroutine de gestion avec un nom de methode et un identifiant
// et il appelle la méthode correspondante de la personne_serv correspondante
func mainteneur(CANgere_con chan message_gestio) {
	mess := <-CANgere_con                   // Recoit un message sur len canal du gere_connection
	res := strings.Split(mess.message, ",") // Il recoit un string "id,methode", donc on split
	id, _ := strconv.Atoi(res[0])
	methode := res[1]

	switch methode { // on switch pour vérfié chaque cas
	case "creer":
		creer(id)
		mess.CANmaint <- "OK"
	case "initialise":
		tab[id].initialise()
		mess.CANmaint <- "OK"
	case "travaille":
		tab[id].travaille()
		mess.CANmaint <- "OK"
	case "vers_string":
		s := tab[id].vers_string()
		mess.CANmaint <- s
	case "donne_statut":
		s := tab[id].donne_statut()
		mess.CANmaint <- s

	}

}

// Goroutine de gestion des connections
// elle attend sur la socketi un message content un nom de methode et un identifiant et appelle le mainteneur avec ces arguments
// elle recupere le resultat du mainteneur et l'envoie sur la socket, puis ferme la socket
func gere_connection(conn net.Conn, CANgere_con chan message_gestio) {
	for {

		mess, _ := bufio.NewReader(conn).ReadString('\n') // Il lit sur la connexion
		mess = strings.TrimSuffix(mess, "\n")
		CANlocal := make(chan string) // Création du canal local pour recevoir les réponses des méthodes
		messgestio := message_gestio{message: mess, CANmaint: CANlocal}
		CANgere_con <- messgestio // envoie de la structure au maintener
		res := <-CANlocal         // on récupère ce que le maintener a envoyé et on l'envoie
		//fmt.Println(res)
		fmt.Fprint(conn, res)
	}
}

func main() {
	if len(os.Args) < 2 {
		fmt.Println("Format: client <port>")
		return
	}
	port, _ := strconv.Atoi(os.Args[1]) // doit être le meme port que le client
	addr := ADRESSE + ":" + fmt.Sprint(port)
	// A FAIRE: creer les canaux necessaires, lancer un mainteneur
	CANgere_con := make(chan message_gestio)
	ln, _ := net.Listen("tcp", addr) // ecoute sur l'internet electronique
	fmt.Println("Ecoute sur", addr)
	for {
		conn, _ := ln.Accept() // recoit une connection, cree une socket
		fmt.Println("Accepte une connection.")
		go gere_connection(conn, CANgere_con) // passe la connection a une routine de gestion des connections
		go mainteneur(CANgere_con)
	}
}
