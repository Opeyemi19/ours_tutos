#include <stdio.h>
#include <string.h>

/*
    Une chaine de caractère est un tableau de caractère.

    [Fonction des chaines]
        strcpy()  : copie une chaine de caractere dans une autre;
        strlen()  : longueur d'une chaine (sans le caractere "\0")
        strcmp()  : comparer deuc=x chaines (lexicographiquement)
        strcat()  : concaténer deux chaines (fusionner)
        strstr()  : chercher une chaine dans une autre
        strchr()  : chercher 1ère occurence du caractère


        sprintf() : écrire dans une chaine de caractere

*/


int main(void)
{

        //C'est une Caratère avec une seule lettre
    signed char mot1 = 'P'; 
    printf("%c\n", mot1);
    
        //C'est une Chaine de Caratère avec une plusieurs lettres
    signed char mot[] = "Riki"; 
    printf("%s\n", mot);


        // Bonne Methode de Changement d'une chaine de caractere à une autre.
    char prenom[25] = "Fatayo Sodiki";
    char stockage[256] = "HJlsl jjjdd jdjkdj jkdkddfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffgfrj";


    char t1[] = "Fat";
    char t2[] = "Fat";
    int test = strcmp(t1, t2);


    char cat1[] = "Boul et ";
    char cat2[] = "Bill";


    char contenttext[] = "Boul et Bill";  
    char serch1[] = "Bill";
    char *stoc = strstr(contenttext, serch1);
    // printf("%s\n", stoc);
   

    char firstsearch[] = "Yin-Yang";
    char c1 = '-';
    char *resultat = strchr(firstsearch, c1);
        // Premiere occurence
    printf("%s\n", resultat);


        // Usage de sprintf
    char te[256];
    char re[] = "dgdj";
    // int r = 4;
    // sprintf(te, "Sum %d", 4);
    // sprintf(te, "Sum %d", r);
    sprintf(te, "Sum chaine %s", re);
    printf("%s\n", te);
    printf("Taille du Texte : %zu\n", strlen(te)); 

    // char buffer[50];
    // int a = 10, b = 20, c;
    // c = a + b;
    // sprintf(buffer, "Sum of %d and %d is %d", a, b, c);
 
    // // The string "sum of 10 and 20 is 30" is stored
    // // into buffer instead of printing on stdout
    // printf("%s", buffer);




    printf("Ton prenom de base : %s\n", prenom);

    printf("Changer ton prenom ?");
    scanf("%s", stockage);

    strcpy(prenom, stockage);

    printf("Ton nouveau prenom : %s\n", prenom);


        //  Taille Chaine de caractere

    printf("Taille du Texte : %zu\n", strlen(stockage));    

        //  Comparaison
    if(test == 0)
        printf("Les deux mots sont les memes la valeur est %d .\n", test);

    else if(test < 0)   
    // char buffer[50];
    // int a = 10, b = 20, c;2, test);

        // Concatenation
    printf("%s\n", strcat(cat1, cat2));


        // Recherche chaine de caractere
    if(stoc != NULL)
        printf("Texte trouvé !\n");
    else
        printf("Aucun texte trouvé\n");

   
    


    return 0;
}