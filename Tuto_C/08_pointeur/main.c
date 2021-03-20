#include <stdio.h>



/*
    Pointeur : variable contenant l'adresse d'une autre variable 
        
        Avantages : 
            - modifie des données dans une fonction car nous avons des adresses de ces données, 
            - permet d'eviter des copies de données et 
            - permet de gagner en rapide et en performance.

    [VARIABLES]
        maVariable  :   valeur de la variable
        &maVariable  :   adresse de  la variable

    [POINTEURS]

        *monPointeur = NULL ou *monPointeur = &maVariable (déclaration et initialisation d'un Pointeur)

        monPointeur  : adresse de la variable pointée   
        *monPointeur  : valeur de la variable pointée   
        &monPointeur  : adresse du pointeur


*/


void inverser_nombres(int *pt_nb1, int *pt_nb2)
{
    int temp = 0;

    temp = *pt_nb2;
    *pt_nb2 = *pt_nb1;
    *pt_nb1 = temp;

}



int main(void)
{
    int nombreA = 15;
    int nombreB = 28;

        // Si l'on aura pas besoin des pointeurs declarées à la suite de notre programme alors l'on peut utiliser l'adresse du pointeur 
    int *pointeurSurNombreA = &nombreA;
    int *pointeurSurNombreB = &nombreB;
    
    printf("Avant : A = %d et B = %d\n", nombreA, nombreB);
        
        // L'adresse de la variable du pointeur
    inverser_nombres(pointeurSurNombreA, pointeurSurNombreB);
        
        // J'utilise ici l'adresse du pointeur question
    // inverser_nombres(&nombreA, &nombreB);
    
    printf("Après : A = %d et B = %d\n", nombreA, nombreB);

    return 0;
}














