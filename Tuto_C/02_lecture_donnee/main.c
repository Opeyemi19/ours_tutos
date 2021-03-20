#include <stdio.h>

int main(void)
{   
    /*
        maVariable   : contenu de la variable (exemple maVariable = 12)
        &maVariable  : adresse où est stockée la variable
        scanf        : beaucoup mis en cause, à cause de la partie securité de cette fonction mais elle reste utiliser sur des petits choses que l'on veut faire
    */

    signed char lettre = 'A';

    printf("Entez une lettre : ");
    scanf("%c", &lettre);


    printf("Lettre choisie => %c\n", lettre);
    
    return 0;
}