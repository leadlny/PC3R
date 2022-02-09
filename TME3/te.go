package main

import (
    "fmt"
    "bufio"
    "log"
    "os"
    "flag"
    "strconv"
    "strings"
    "errors"
    "time"
)

const fichier = "stop_times.txt"
const nbTravailleurs = 3


type paquet struct {
    arrivee string
    depart string
    arret float64
    c_retour chan paquet
}


// --- Lecteur unique
func lecteur(file_name string, c_lect chan string) {

    // Repérage du fichier
    fptr := flag.String("./", file_name, "file path to read from")
    flag.Parse()

    // Ouverture du fichier
    f, err := os.Open(*fptr)
    if err != nil {
        log.Fatal(err)
    }

    defer func() {
        if err = f.Close(); err != nil {
            log.Fatal(err)
        }
    }()
    
    // Parcours de chaque ligne
    s := bufio.NewScanner(f)
    // on saute la 1ère ligne 
    s.Scan()
    for s.Scan() {
        // envoi de chacune de ces lignes sur le canal de lecture, pour les travailleurs
        c_lect <- s.Text()
    }

    err = s.Err()
    if err != nil {
        log.Fatal(err)
    }
}


// --- Travailleurs
func travailleur(c_lect chan string, c_calc chan paquet, c_reduc chan paquet) {
    // on boucle pour toujours, toujours plus travailler ! 
    for {
        // reçoit une ligne, la découpe selon les virgules et la met dans un paquet
        var ligne string = <- c_lect
        donnees := strings.Split(ligne, ",")
        
        arr := strings.Split(donnees[1], ":")
        dep := strings.Split(donnees[2], ":")

        var canal chan paquet = make(chan paquet, 100)
        var paq paquet = paquet{arrivee : arr[0] + "h" + arr[1] + "m", depart : dep[0] + "h" + dep[1] + "m", arret : 0.0, c_retour : canal}

        // envoi sur le calculateur
        c_calc <- paq

        // réception du paquet modifié (champ arret calculé)
        paq_res := <- paq.c_retour

        // envoi du résultat au réducteur
        c_reduc <- paq_res
    }
}


// --- Serveur de calcul
func calculateur(c_calc chan paquet) {
    for {
        // reçoit des paquets, et en change le champ 'arret' <- durée de l'arrêt
        var paq paquet = <- c_calc
        
        arr, _ := time.ParseDuration(paq.arrivee)
        dep, _ := time.ParseDuration(paq.depart)

        /* 
        fmt.Println(arr)
        fmt.Println(dep)
        fmt.Println()
        */

        // on soustrait le temps pour avoir le nombre de secondes
        paq.arret = (dep - arr).Seconds()

        // puis les renvoie au travailleur source
        paq.c_retour <- paq
    }
}


// --- Réducteur
func reducteur(c_reduc chan paquet, c_res chan float64, c_fin chan int) {
    // recoit des paquets transformés et calcule : somme des arrêts et somme des voyages
    var nb_arrets float64 = 0.0
    var tot_arrets float64 = 0.0

    for {
		select {
            // réception de paquets, calcul...
            case paq := <- c_reduc :
                nb_arrets++
                tot_arrets += paq.arret
                fmt.Printf("arrêt = %f\n", paq.arret)

            // réception de message d'arrêt : envoi du résultat au main
            case <- c_fin :
                if (nb_arrets != 0) { 
                    c_res <- tot_arrets / nb_arrets
                } else {
                    c_res <- 0.0
                }
        }
    }
}


// --- Processus principal
func main() {

    fmt.Println("---------- TME3 PC3R ----------")
    

    // Récupération de l'argument donné (temps imparti)
    // S'il n'y en a pas le bon nombre, lancement d'erreur :
    if ( len(os.Args[1:]) != 1 ) {
        panic(errors.New("Vous devez passer UN argument qui est un entier (temps en millisecondes). Arrêt."))
    }
    // Sinon on essaie de le convertir en entier :
    temps, err := strconv.Atoi(os.Args[1])
    if err != nil {
        log.Fatal(err)
    }
    fmt.Printf("\n--- Temps imparti : %d millisecondes. GO!!\n\n", temps)

    fmt.Println("... analyse textuelle du fichier '" + fichier + "'...")
    fmt.Println()


    // Création des différents canaux de communication

    // un canal pour que le lecteur donne les lignes aux travailleurs :
    c_lect := make(chan string, 100)

    // un canal de réception de paquets pour le calculateur :
    c_calc := make(chan paquet, 100)

    // un canal pour que le réducteur reçoive les résultats des travailleurs :
    c_reduc := make(chan paquet, 100)

    // un canal pour envoyer le résultat de réducteur à main :
    c_res := make(chan float64)

    // un canal pour signaler au réducteur de s'arrêter :
    c_fin := make(chan int)


    // On lance les différents processus 
    go func() { lecteur(fichier, c_lect) }()
    go func() { calculateur(c_calc) }()
    go func() { reducteur(c_reduc, c_res, c_fin) }()
    for i := 0 ; i < nbTravailleurs ; i++ {
        go func() { travailleur(c_lect, c_calc, c_reduc) }()
    }

    // attente puis envoi d'un signal d'arrêt
    time.Sleep(time.Duration(temps) * time.Millisecond)
    c_fin <- 0

    // récupération du résultat final
    var moyenne float64 = <- c_res
    fmt.Printf("--- Durée d'arrêt moyenne = %f secondes", moyenne)

    fmt.Println()
    fmt.Println("---------- FIN ----------")
}
