#include <stdio.h>

int main(void)
{
    /*
        == : égal à
        != : différent de
        < :  plus petit que
        > :  plus grnad que
        <= : plus petit ou égal à
        >= : plus pgrand ou egal à


        && : ET
        || : OU
        !  : NOT

    */


    //C'est le IF 
    int jeu_demarre = 2;


        //Verifie si une valeur est  vrai(1) avec ex:jeu_demarre ou est faux(0) avec le point d'ecclamation[!] ex: !jeu_demarre
    if(!jeu_demarre)
    {
        printf("Bienvenue sur le jeu\n");
    }
    else{
        printf("le jeu n'a pas été lancé ...\n");
    }

    // C'est le Switch : Conseiller lorsqu'on a plus de 3 à 4 condition if car il va faire gagner du temps.

    int age = 35;

    switch(age)
    {
        case 0:
            printf("Tu as 0 an.\n");
            break;
        case 10:
            printf("Tu as 10 an.\n");
            break;
        case 20:
            printf("Tu as 20 an.\n");
            break;
        
        default:
            printf("Tu n'as ni 0 an, ni 15ans, ni 20ans \n");

    }


    // Le Ternaire:

    int age1 = 20;

    int il_a_quinze_ans = -1;

    il_a_quinze_ans = (age1 == 15) ? 1  : 0;
    
    printf("Il a quinze ans = %d\n", il_a_quinze_ans);


    return 0;
}