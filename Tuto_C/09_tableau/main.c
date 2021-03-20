#include <stdio.h>


/*  
    Un Tableau est un pointeur vers son premier élément.

    [Déclaration tableau]
        <type> <nom_tableau>[X]; //Déclare avec valeurs aléatoires

    [Initialisation]
        tableau[5] = {valeur1, valeur2, valeur3, valeur4, valeur5};
        tableau[5] = {0}; // Toutes les cases valent 0
        tableau[5] = {4}; // Premiere case seul vale 4 et les autres cases sont à 0 !
    
    [Accès au tableau]
        tableau[X] : élément d'indice X (X+1ème élément du tableau)
        Au niveau du tableau une fois on a l'adresse du premier Indice alors on a tous les autres elements du Tableau car il se suivre. 

        tableau        : adresse du tableau (Il est dejà un pointeur vers le premier indice du tableau)
        *tableau       : premier element du tableau
        *(tableau + X) : l'element de l'indice X

    (NOTE)
        tableau[5] même chose que  -> *(tableau + 5)

*/

/*-------------------------------------------------------------------------------------------------*/

#define TAILLE_TAB 6
#define NOMBRE_LIGNES 3
#define NOMBRE_COLONNES 2

int *creer_tableau(void);
void afficher_tableau(int tab[], int taille);


/*-------------------------------------------------------------------------------------------------*/

int main(void)
{   
    
    // int myTableau[TAILLE_TAB] = {1,2,5,69,9,47};
    int *myTableau = creer_tableau();

    
    /*-------------------------------------------------------------------------------------------------*/
            // Tableau à deux dimensions.

        int damier[NOMBRE_LIGNES][NOMBRE_COLONNES] = { 
            {1,2},
            {3,4},
            {5,6}
        };

        int i, j;

        // int afficher_tableau_deux_dimensions(damier, NOMBRE_LIGNES, NOMBRE_COLONNES);

        for(i = 0; i < NOMBRE_LIGNES; i++)
            for(j = 0; j < NOMBRE_COLONNES; j++)
                printf("Element indice [%d][%d] = %d\n", i, j, damier[i][j]);

    
    /*-------------------------------------------------------------------------------------------------*/

    printf("\n\n");

    afficher_tableau(myTableau, TAILLE_TAB);
    
    printf("\n\n");

    myTableau[4] = 100;

    afficher_tableau(myTableau, TAILLE_TAB);

    printf("\n\n");

    return 0;
}

/*-------------------------------------------------------------------------------------------------*/
// Creer un Tableau

int *creer_tableau(void)
{
    static int tableau_entier[TAILLE_TAB];  // Il ajoute le (static) pour rendre la variable static car sans cela on aura une Erreur de la variable Local
    int i;

    for(i = 0; i < TAILLE_TAB; i++)
        tableau_entier[i] = i * 3;
    
    return tableau_entier;

}




/*-------------------------------------------------------------------------------------------------*/


                  // int *tab
                     // ou
void afficher_tableau(int tab[], int taille)
{   
    int i;

    for(i = 0; i < TAILLE_TAB; i++)
    {
        printf("[%d]", tab[i]);
    }
}


/*-------------------------------------------------------------------------------------------------*/


// void afficher_tableau_deux_dimensions(int tab_damier[][], int taille, int taille2)
// {   
//     int i, j;

//     for(i = 0; i < NOMBRE_LIGNES; i++)
//         for(j = 0; j < NOMBRE_COLONNES; j++)
//             printf("Element indice [%d][%d] = %d\n", i, j, tab_damier[i][j]);
// }