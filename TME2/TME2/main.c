//
//  main.c
//  PC3RTME2
//
//  Created by Delannay Léa on 05/02/2021.
// J'ai un segfault je n'ai pas réussi à voir d'où ça venait, et aussi je n'ai pas eu le temps d'implémenter les journaux mais j'ai fais des print

//


#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>
#include <sched.h>
#include "ft_v1.0/src/fthread.h"

#define TAPIS_SIZE 4 // taille tapis
#define PRODUCER_NUMBER 4
#define CONSUMMER_NUMBER 4
#define MESSENGER_NUMBER 4
#define TARGET_SIZE 1 //nombre à produire



/*global variable declaration */

char *PRODUITS[] = {"Banane", "Pomme", "Poire", "Fraise"};


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
    ft_event_t * NotEmpty,*NotFull; // évenements qui vont servir pour faire attendre dans le tapis
   
} tapis;

tapis *tapis_init(ft_event_t * a, ft_event_t * b) // création du tapis
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
    t->NotEmpty=a;
    t->NotFull=b;
    return (t);
}
typedef struct _Mess{                               // Ajout d'une structure pour les messagers avec les 2 schedulers, un identifiant, les 2 tapis, le compteur partagé
    ft_scheduler_t schedC;
    ft_scheduler_t schedP;
    int id;
    tapis * tapProd;
    tapis * tapCons;
    int *cpt;
    FILE * Journal;                                 // La où il va écrire le journal
}Mess;

typedef struct _Prod{
    char * nom_produit;                             //nom de ce que le producteur va produire
    int cible;                                       // sa cible de production
    int production;                                 // le nombre de de paquet dejà produit
    tapis * t;
    int id;                                         // son identifiant
    FILE * journalP;                                // Journal de production
}Prod;

typedef struct _Cons{
    int id;                                          // son identifiant
    tapis *t;
    int *cpt;
    ft_event_t * fin;                               //evenement qui montre que les consommateurs ont fini de tout consommer
    FILE * journalC;                                // Journal de consommation
}Cons;

void enfiler(tapis *tapis, paquet in_paquet)        // ajout d'un paquet sur le tapis
{

    
    tapis->file[tapis->tail] = in_paquet;             // on ajoute le paquet à l'indice indiqué par tail
    tapis->tail++;                                    // tail passe donc à l'indice suivant
    if (tapis->tail == TAPIS_SIZE){
        tapis->tail = 0;
    }
    if (tapis->tail == tapis->head){                    // si le debut et la fin de la file sont au même indice alors le tapis est plein
        tapis->full = 1;
    }
    tapis->empty = 0;                                   // comme on a ajouter un paquet le tapis ne peut pas être vide
    

}

paquet defiler(tapis *tapis)                        // supression du premier paquet arrivé
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
    tapis->full = 0;                                   // comme on a retirer un paquet le tapis ne peut pas être plein
  
    return out_paquet;
}

/*producer thread callback function */
void producer (void *q)
{
    Prod *prod = (Prod *)q;
    tapis *t=prod->t;
    printf("Producteur %d démarre sa production \n",prod->id);
    while(prod->production < prod->cible){
        while(t->full){                             //Si le tapis est plein on ne peut pas enfiler
            ft_thread_await(*t->NotFull);
            ft_thread_cooperate();
        }
        paquet *p = (paquet *)malloc(sizeof(paquet));
        sprintf(p->name, "paquet: %s %d", prod->nom_produit,prod->production);
        enfiler(t, *p);
        ft_scheduler_broadcast(*t->NotEmpty);       // On reveille les messagers qui attendaient pour récuperer un paquet
        printf("producer %d: enfile %s \n",prod->id, p->name);
        prod->production++;
        // il faut que j'ajoute le journal de production
        ft_thread_cooperate();
    }

    free(prod);

}

/*consumer thread callback function */
void consumer (void * args)
{
    Cons *cons=(Cons*)args;
    tapis *t = cons->t;
    printf("Consommateur %d démarre sa conso \n",cons->id);
    while(*cons->cpt > 0){
        while(t->empty){                             //Si le tapis est plein on ne peut pas enfiler
            ft_thread_await(*t->NotEmpty);
            ft_thread_cooperate();
        }
        paquet p=defiler(t);
        printf("Consommateur %d: prend %s\n",cons->id, p.name);
        (*cons->cpt)--;
        ft_scheduler_broadcast(*t->NotFull);        // On reveille les messagers qui attendaient pour déposer un paquet
        //mettre a jour journal
        ft_thread_cooperate();
    }
    ft_thread_generate(*cons->fin);
}

/*messenger thread callback function */
void messenger (void * args){
    Mess *mess=(Mess*)args;
    tapis *t_prod=mess->tapProd;
    tapis *t_cons=mess->tapCons;
    ft_scheduler_t schedP=mess->schedP;
    ft_scheduler_t schedC=mess->schedC;
    ft_thread_unlink();

    
    printf("Messager %d démarre \n",mess->id);
    while(*mess->cpt >0){
        ft_thread_link(schedP);
        while(t_prod->empty){                             //Si le tapis est plein on ne peut pas enfiler
            printf("tapis vide\n");
            ft_thread_await(*t_prod->NotEmpty);
            ft_thread_cooperate();
        }
        paquet p =defiler(t_prod);
        printf("Messager %d  prend un paquet\n",mess->id);
        ft_scheduler_broadcast(*t_prod->NotFull);
        ft_thread_unlink();
        //journal
        ft_thread_link(schedC);
        while(t_cons->full){                             //Si le tapis est plein on ne peut pas enfiler
            printf("Tapis plein\n");
            ft_thread_await(*t_cons->NotFull);
            ft_thread_cooperate();
        }
        enfiler(t_cons, p);
        printf("Messager %d depose un paquet \n",mess ->id);
        ft_scheduler_broadcast(*t_cons->NotEmpty);

        ft_thread_unlink();
        
    }

    free(mess);

}
typedef struct{
    ft_event_t * fin;
}Fin;

void finProg(void * args){
    Fin * f =(Fin*)args;
    ft_thread_await(*f->fin);
}
int main(int argc, char *argv[])
{
    ft_scheduler_t schedP = ft_scheduler_create();
    ft_scheduler_t schedC = ft_scheduler_create();
    
    ft_event_t a1=ft_event_create(schedP);
    ft_event_t b1=ft_event_create(schedP);
    ft_event_t a2=ft_event_create(schedC);
    ft_event_t b2=ft_event_create(schedC);
    ft_event_t fin=ft_event_create(schedC);
    
    tapis *tapis_Prod = tapis_init(&a1,&b1);
    tapis *tapis_Cons = tapis_init(&a2,&b2);
    
    ft_thread_t producers[PRODUCER_NUMBER], consumers[CONSUMMER_NUMBER],messengers[MESSENGER_NUMBER];

    
    int compteur = TARGET_SIZE*PRODUCER_NUMBER; // le compteur démarre à (cible de production * nb producteurs)
    
    int i;

    for (i = 0; i < PRODUCER_NUMBER; i++)   // Création des producteur
    {
        Prod *p=malloc(sizeof(Prod));
        p->production=0;
        p->cible=TARGET_SIZE;
        p->id=i;
        p->t=tapis_Prod;
        p->nom_produit=PRODUITS[i];
        producers[i]=ft_thread_create(schedP,producer, NULL,(void *) p);
        
    }
    
    for (i = 0; i < MESSENGER_NUMBER; i++)
    {
        Mess *m=malloc(sizeof(Mess));
        m->id=i;
        m->schedC=schedC;
        m->schedP=schedP;
        m->tapCons=tapis_Cons;
        m->tapProd=tapis_Prod;
        m->cpt=&compteur;
        messengers[i]=ft_thread_create(schedC, messenger, NULL,(void *) m);
     
    }

     
    for (i = 0; i < CONSUMMER_NUMBER; i++)
    {
        Cons *c=malloc(sizeof(Cons));
        c->id=i;
        c->t=tapis_Cons;
        c->cpt=&compteur;
        consumers[i]=ft_thread_create(schedC, consumer, NULL,(void *) c);
        
    }
    
      

    
    Fin * args = malloc(sizeof (Fin));
    args->fin=&fin;
    ft_thread_t finThread = ft_thread_create(schedC, finProg, NULL, (void *)args);
    ft_scheduler_start(schedP);
    ft_scheduler_start(schedC);
    for (i = 0; i < PRODUCER_NUMBER; i++)
    {
        pthread_join(ft_pthread(producers[i]),NULL);
    }
    
    for (i = 0; i < MESSENGER_NUMBER; i++)
    {
        pthread_join(ft_pthread(messengers[i]),NULL);
    }

     
    for (i = 0; i < CONSUMMER_NUMBER; i++)
    {
        pthread_join(ft_pthread(consumers[i]),NULL);
        
    }
    pthread_join(ft_pthread(finThread),NULL);

    return EXIT_SUCCESS;
}
