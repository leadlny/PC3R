//
//  main.c
//  PC3RTME1
//
//  Created by Delannay Léa on 02/02/2021.
//

#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>
#define TAPIS_SIZE 20 // taille tapis
#define PRODUCER_NUMBER 4
#define CONSUMMER_NUMBER 4
#define TARGET_SIZE 3 //nombre à produire


/*global variable declaration */
int ret_count;

char *PRODUITS[] = {"Banane", "Pomme", "Poire", "Fraise"};

int compteur = TARGET_SIZE*PRODUCER_NUMBER; // le compteur démarre à cible de production * nb producteurs

typedef struct _paquet
{
    char name[255];
} paquet;

typedef struct _tapis
{
    char name[255];
    int capacity;
    paquet file[TAPIS_SIZE];
    int size;
    int full, empty; // nous permet de savoir si le tapis est vide ou plein sans créer de fonction
    int head, tail; // nous permet de gerer la file comme une FIFO
    pthread_mutex_t *mutex;
    pthread_cond_t *notFull, *notEmpty;
} tapis;

tapis *tapis_init(void) // création du tapis
{
    tapis *t;
    t = (tapis *)malloc(sizeof(tapis));
    if (t == NULL)
    {
        return (NULL);
    }
    t->empty = 1; // le tapis est vide à sa création
    t->full = 0;
    t->head = 0;
    t->tail = 0;
    t->mutex = (pthread_mutex_t *)malloc(sizeof(pthread_mutex_t));
    ret_count = pthread_mutex_init(t->mutex, NULL); // initialisation du mutex puis des conditions
    if (ret_count)
    {
        printf("\n ERROR : init mutex, Return code from pthread_mutex_init() is %d ", ret_count);
        exit(-1);
    }

    t->notFull = (pthread_cond_t *)malloc(sizeof(pthread_cond_t));
        if(pthread_cond_init(t->notFull, NULL)){
            printf("Condition init error");
        };
    t->notEmpty = (pthread_cond_t *)malloc(sizeof(pthread_cond_t));
        if(pthread_cond_init(t->notEmpty, NULL)){
            printf("Condition init error");
        };
    return (t);
}

void free_tapis(tapis *tapis)//liberation du tapis
{
    ret_count = pthread_mutex_destroy(tapis->mutex);
    if (ret_count)
    {
        printf("\n ERROR :destroy mutex, Return code from pthread_mutex_destroy() is %d ", ret_count);
        exit(-1);
    }
    free(tapis->mutex);
    pthread_cond_destroy(tapis->notFull);
    free(tapis->notFull);
    pthread_cond_destroy(tapis->notEmpty);
    free(tapis->notEmpty);
    free(tapis);
}

typedef struct _Prod{
    char * nom_produit;                             //nom de ce que le producteur va produire
    int cible;                                       // sa cible de production
    int production;                                 // le nombre de de paquet dejà produit
    tapis * t;
    int id;                                          // son identifiant
}Prod;

typedef struct _Cons{
    int id;                                          // son identifiant
    tapis *t;
    int * cpt ;
}Cons;

void enfiler(tapis *tapis, paquet in_paquet)        // ajout d'un paquet sur le tapis
{
    tapis->file[tapis->tail] = in_paquet;             // on ajoute le paquet à l'indice indiqué par tail
    tapis->tail++;                                    // tail passe donc à l'indice suivant
    if (tapis->tail == TAPIS_SIZE)                    // si l'indice de tail est le même que celui de la taille du tapis alors tail revient au tout premier indice
    {
        tapis->tail = 0;
    }
    if (tapis->tail == tapis->head)                    // si le debut et la fin de la file sont au même indice alors le tapis est plein
    {
        tapis->full = 1;
    }
    tapis->empty = 0;                                  // comme on a ajouter un paquet le tapis ne peut pas être vide
    return;
}

paquet defiler(tapis *tapis,* cpt)                        // supression du premier paquet arrivé
{

    paquet out_paquet = tapis->file[tapis->head];     // on recupère le paquet à l'indice head
    tapis->head++;                                    // le début de la file se décale donc d'un indice
    if (tapis->head == TAPIS_SIZE)                    // si cette indice correspond à la taille max on retourne au début de la file
    {
        tapis->head = 0;
    }
    if (tapis->head == tapis->tail)                   // si le début du tapis est au même indice que la fin alors le tapis est vide
    {
        tapis->empty = 1;
    }
    tapis->full = 0;                                  // comme on a retirer un paquet le tapis ne peut pas être plein
    (*cpt)--;
    return out_paquet;
}

/*producer thread callback function */
void *producer(void *q)
{
    Prod *prod = (Prod *)q;
    tapis *t=prod->t;

    while (prod->production < (prod->cible))          // tant qu'il n'a pas atteint sa cible de production
    {
        pthread_mutex_lock(t->mutex);                //On prend le verrou,On protège le code pour que le producteur ne soit pas coupé pendant sa production
        while (t->full)
        {
            pthread_cond_wait(t->notFull, t->mutex);// Si le tapis est plein il doit attendre
        }

        paquet *p = (paquet *)malloc(sizeof(paquet));
        sprintf(p->name, "paquet: %s %d", prod->nom_produit,prod->production);

        enfiler(t, *p);
        printf("producer %d: add %s \n",prod->id, p->name);
        prod->production++;
        pthread_mutex_unlock(t->mutex);             //Onlibère le verrou
        pthread_cond_signal(t->notEmpty);           //On reveille les consommateur qui attendaient

        usleep(100000);
    }
    
    free(prod);
    return (NULL);
}

/*consumer thread callback function */
void *consumer(void *q)
{
    Cons *cons=(Cons*)q;
    tapis *t = cons->t;

    while ((*cons->cpt) > 0)                         // Tant que le compteur n'est pas à 0
    {
        pthread_mutex_lock(t->mutex);            //On prend le verrou
        while (t->empty)
        {
            pthread_cond_wait(t->notEmpty, t->mutex);   // Si le tapis est vide il doit attendre
        }

        paquet p=defiler(t,cons->cpt);
        printf("consumer %d: received %s\n",cons->id, p.name);
        compteur--;
        pthread_mutex_unlock(t->mutex);                 // On libère le verrou
        pthread_cond_signal(t->notFull);                // On reveille les producteurs qui attendaient
        
        usleep(500000);
    }
    free(cons);

    return (NULL);
}

int main(int argc, char *argv[])
{
    tapis *tapis = tapis_init();                                    //Initialisation du tapis
    pthread_t producers[PRODUCER_NUMBER], consumers[CONSUMMER_NUMBER];  // Tableaux pour les thread producteur et consommateur
    int i = 0;


    if (tapis == NULL)
    {
        fprintf(stderr, "main: tapis init failed.\n");
        return EXIT_FAILURE;
        exit(1);
    }
    /*producer thread creation */
    for (i = 0; i < PRODUCER_NUMBER; i++)   // Création des producteur
    {
        Prod *args=malloc(sizeof(Prod));
        args->production=0;
        args->cible=TARGET_SIZE;
        args->id=i;
        args->t=tapis;
        args->nom_produit=PRODUITS[i];
        ret_count = pthread_create(&producers[i], NULL, producer, args);
        if (ret_count)
        {
            printf("ERROR :creation prod Return code from pthread_create() is %d\n", ret_count);
            exit(-1);
        }
    }

    /*consumer thread creation */
    for (i = 0; i < CONSUMMER_NUMBER; i++)
    {
        _Cons *args=malloc(sizeof(Cons));
        args->id=i;
        args->t=tapis;
        ret_count = pthread_create(&consumers[i], NULL, consumer, args);
        args->cpt=&compteur;
        if (ret_count)
        {
            printf("ERROR :creation cons Return code from pthread_create() is %d\n", ret_count);
            exit(-1);
        }
    }

    /*joining producer thread to main thread */
    for (i = 0; i < PRODUCER_NUMBER; i++)
    {
        ret_count = pthread_join(producers[i], NULL);
        if (ret_count)
        {
            printf("ERROR : Return code from pthread_join() is %d\n", ret_count);
            exit(-1);
        }
    }

    /*joining consumer thread to main thread */
    for (i = 0; i < CONSUMMER_NUMBER; i++)
    {
        ret_count = pthread_join(consumers[i], NULL);
        if (ret_count)
        {
            printf("ERROR : Return code from pthread_join() is %d\n", ret_count);
            exit(-1);
        }
    }

    free_tapis(tapis);
    return EXIT_SUCCESS;
}
