#include <stdio.h>
#include <stdlib.h>

/*
    sizeof(<donnee>)            : retourne la taille en octets d'une donnée

    malloc(<taille_en_octets>)  : allouer dynamiquement une zone mémoire en fonction de ce que l'user rentre. 
    free(<donnee_allouer>)      : libère la mémoire allouée dynamiquement

    calloc(<donnee>, <taille_en_octets>) : alloue dynamiquement et initialise tout à 0
    realloc(<donnee>, <nouvelle_taille>) : réalloue un espace mémoire

*/



int main(void)
{

    // int nombreJoueur = 0;
    int nombreJoueur = 2;
    int *liste_joueurs = NULL;
    int i;

    // printf("Combien de joueur ?\n");
    // scanf("%d", &nombreJoueur);

    // Malloc
    liste_joueurs = malloc(sizeof(int) * nombreJoueur);
    
    // Calloc
    // liste_joueurs = calloc(nombreJoueur, sizeof(int));

    if(liste_joueurs == NULL)
        exit(1);

    
    for(i = 0; i < nombreJoueur; i++)
    {
        printf("Joueur %d -> numero %d \n", i + 1, i * 3);
        liste_joueurs[i] = i * 3;
    }


    for(i = 0; i < nombreJoueur; i++)
    {
        printf("[%d]\n", liste_joueurs[i]);
    }

    printf("Addresse de la liste : %p\n", liste_joueurs);



    // ------------------------------------------------------------------ Realloc ---------------------------------------------

    printf("\n------------------------------\n");

    nombreJoueur = 5;

    liste_joueurs = realloc(liste_joueurs, nombreJoueur * sizeof(int));

    if(liste_joueurs == NULL)
        exit(1);

    for(i = 0; i < nombreJoueur; i++)
    {
        printf("Joueur %d -> numero %d \n", i + 1, i * 3);
        liste_joueurs[i] = i * 3;
    }


    for(i = 0; i < nombreJoueur; i++)
    {
        printf("[%d]\n", liste_joueurs[i]);
    }

    printf("Addresse de la liste : %p\n", liste_joueurs);

    free(liste_joueurs);


    return 0;

}