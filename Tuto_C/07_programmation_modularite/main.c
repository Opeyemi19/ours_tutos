#include <stdio.h>
#include "player.h"


int main(void)
{
    int level = 15;

    bonjour();

    printf("Niveau actuel : %d\n", level);

    level = reset_niveau();

    printf("Niveau apres reset : %d\n", level);

    
    // Var Static

    printf("Niveaau == %d\n", augmente_niveau());
    printf("Niveaau == %d\n", augmente_niveau());
    printf("Niveaau == %d\n", augmente_niveau());
    printf("Niveaau == %d\n", augmente_niveau());


    return 0;
}