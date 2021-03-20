#include <stdio.h>

// Toutes variables locales au sein d'une fonctions est detruite à la fin.

int init_ball(int postX)
{
    postX = 1000;

    return postX;
}


void bonjour(void)
{
    printf("Coucou !!!!\n");

}


int bonjour1(void)
{
    // Ici le retourn va nous donnez le nombre de caractère se trouvant dans les côtes de 3.
   return printf("Coucou !!!!\n");

}


int main(void)
{   

    int balleX;
    

    balleX = init_ball(balleX);
    printf("Avant la partie : %d !!!\n", balleX);
    
    
    bonjour();
    
    printf("Hi, %d \n", bonjour1());


    return 0;
}






