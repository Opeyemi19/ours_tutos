#include <stdio.h>

int main(void)
{   
    /*  
        + (additio)
        - (soustraction)
        * (multilication)
        / (division)
        % (modulo)

        <variable> = <variable> + X --> <variable> += X

        A = A - X
        A -= X

        A = A * X
        A *= X
    -------------------------------------------------------------
        A += 1 --> A + 1    
        A -= 1 --> A - 1

        A++ = Post-incrementation  ++A = Pre-incrementation
        A-- Post-décrémentation    --A = Pre-décrementation   

       
    */

    int niveau_joueur = -1;

    printf("Choisir le niveau de depart : ");
    scanf("%d", &niveau_joueur);

    printf("Niveau de depart : %d\n", niveau_joueur);

    niveau_joueur++;
    printf("Nivau actuel %d\n", niveau_joueur);
    
    return 0;
}