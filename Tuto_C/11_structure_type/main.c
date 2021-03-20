#include <stdio.h>
#include <string.h>


/*
    Structure : Un regroupemet de types de données (variables et autres)

    Enumeration : Liste qui permet d'enumerer un type de données qui a des valeurs constantes.

    Union : Regrouper plusieurs données mais qui accède à la meme Zone Memoire.

    typedef : Transformer une strucure, enumération en Type comme les types de variables: int, char, double, etc

    (*monPointeur).un_champ = X;
        est meme chose que
    monPointeur->X;


*/

/*----------------------------------- Structure Player ----------------------------------------*/

typedef struct Player 
{
    signed char username[256];
    int hp;
    int mp;
} Player1;

/*----------------------------------- Fin Structure Player ----------------------------------------*/




/*----------------------------------- Enumeration d'une liste ----------------------------------------*/

typedef enum Boolean 
{
    
    NON, //0
    OUI //1

} Boolean1;


typedef enum MarqueVoiture
{
    PEUGEOT = 20,
    RENAULT,
    TOYOTA,
    MAZDA

} Marque;


/*----------------------------------- Fin Enumeration d'une liste ----------------------------------------*/



/*----------------------------------- Union ----------------------------------------*/

union TypeJoueur
{
    int entier;
    float decimal;
}

/*----------------------------------- END Union ----------------------------------------*/








/*----------------------------------- Fonction Creaction de Player en Pointant directement toutes les variables de la Structure Player ----------------------------------------*/


void create_player(Player1 *p)
{
    strcpy(p->username, "Nokia");
    p->hp = 100;
    p->mp = 80;
}



/*----------------------------------------------------------------------- End--------------------------------------------------------------------------------------*/




int main(void){

/*----------------------------------------------------------------------- Strucure --------------------------------------------------------------------------------------*/


    // Initialisation de structure
    Player1 p1 = {"", 0, 0};


    create_player(&p1);

    printf("Nom du joueur : %s\n", p1.username);
    printf("PV : %d | PM : %d\n", p1.hp, p1.mp);


/*----------------------------------------------------------------------- Enumeration--------------------------------------------------------------------------------------*/

    Boolean1 jeu_lance = NON;

    Marque voiture1 = TOYOTA;


/*----------------------------------------------------------------------- Union--------------------------------------------------------------------------------------*/

    union TypeJoueur tp1;

    tp1.entier = 3;
    tp1.decimal = 3.14;



    return 0;
}



