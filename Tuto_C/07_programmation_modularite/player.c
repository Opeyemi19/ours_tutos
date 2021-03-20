// Developpez les fonctions prototypés dans le fichier (player.h)
#include <stdio.h>
#include "player.h"

// Variable Globale
static int TVA = 20;



void bonjour(void)
{
    printf("Hello tous !!!\n");
    printf("La TVA : %d\n", TVA);
    bonjour1();
}

// Definir que cette fonction ne sera appellé nul part sauf dans le fichier où se trouve la fonction.
static void bonjour1(void)
{
    printf("Hiii Guy !!!\n");
}

int reset_niveau(void)
{
    int niveau;

    niveau = 0;

    return niveau;

}

// La definition d'une variable static avec le (static) au sein d'une fonction ne supprimera pas cette variable à la fin de la fontion et va toujours conserver sa valeur. Mais cette variable sera supprimée à la fin du Programme. 

int augmente_niveau(void)
{
    static int niveau = 0;

    niveau += 2;

    return niveau;

}