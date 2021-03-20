#include <stdio.h>

int main(void)
{   
    int i = 0;
    int y;

        // While 
    while(i < 2)
    {   
        printf("Bonjour tout le monde !!!\n");
        i++;
    }


        // Do ... While
    do 
    {
        printf("Aya !!!\n");
        i++;
    }
    while(i < 5);


        // For
    for(y = 0; y < 5; y++)
    {
        printf("<<<<riki !\n");
    }

    
    return 0;
}