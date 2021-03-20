#include <stdio.h>

int main(void)
{   

    int aireDuCarre = 5;   
    float prix = 82.1556522;
    signed char carcter = 65;
    signed char carcter1 = 'A';

    // Modifier la valeur de la variable à l'afficheage.
    int prix2 = (int)prix;

// Definission de la constante et la syntaxe d'une constante doit être en MAJUSCULE pour le différencier des autres.

    const float PI = 3.14;
    const float TVA = 20.0;



    /*
        %d : Nombre entier (int)
        %f : Nombre flottant (float)
        %c : caractère (char)
        %s : chaine de caractère (texte)
    */


    printf("L'Aire du carré est %d  et le prix est %.3f ou %d \n", aireDuCarre, prix, prix2);

    return 0;

}