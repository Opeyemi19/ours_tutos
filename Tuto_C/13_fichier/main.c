#include <stdio.h>
#include <stdlib.h>

/*

    fopen(<fichier>, <mode_ouverture>) : r  (lecture seule, doit exister)
                                         w  (écriture seule)
                                         a  (ajout fin fichier)
                                         r+ (lecture/écriture, doit exister)
                                         w+ (lecture/écriture, supprime contenu)
                                         a+ (lecture/écriture, fin de fichier)

    fclose(<fichier>) : fermer un fichier ouvert
    feof(<fichier>)   : tester la fin d'un fichier
    

    [LECTURE]
    fgetc(<fichier>)                            : lire un caractere
    fgets(<chaine>, <taille_chaine>, <fichier>) : lire une ligne
    fscanf(<fichier>, <format>, ...)            : lit du texte formaté

    [ECRITURE]
    fputc(<caractere>, <fichier>)               : écrit un caractère
    fputs(<chaine>, <fichier>)               : écrit une ligne de texte
    fprintf(<fichier>, <format>, ...)               : écrit du texte formaté

    [POSITIONNEMENT]
    ftell(<fichier>) : retourne position curseur dans fichier

    fseek(<fichier>, <deplacement>, <origine>) : deplace curseur

        -> <origine> : SEEK_SET (début fichier)
                       SEEK_CUR (position courante)
                       SEEK_END (fin fichier)

    rewind(<fichier>) : réinitialiser la position du curseur

    [DIVERS]
    rename (<ancien_nomm>, <nouveau_nom>)   : Renommer un fichier
    remove(<fichier>)                       : Supprimer le fichier

*/


int main(void)
{
    // FILE *fic = fopen("sauvegarde.txt", "r");  
    // int lettre = 0;
    // signed char texte[256];
    // int age = 0;
    // int nombre_abonnes = 0;


    // Ecriture
    // FILE *fic = fopen("sauvegarde.txt", "w");
    // FILE *fic = fopen("profile.save", "w");
    // char mot[] = "Bonjour";
    // char pseudo[] = "Niki";
    // int age = 26;
    // int abonnes = 100000;

    // POSITIONNEMENt
    FILE *fic = fopen("profile.save", "r");
    int position_curseur = -1;


    



    if(fic == NULL)
        exit(1);

/*--------------------------------------------------------Lecture -----------------------------------------*/

    // lettre = fgetc(fic); // la fgetc retourne une constante EOF
    // printf("%c\n", lettre);

    /*
    // fgetc
    while((lettre = fgetc(fic)) != EOF)
    {
        printf("%c", lettre);
    }
    */

    /*
    // fgets
    while(fgets(texte, 255, fic) != NULL)
        printf("%s\n", texte);
    */


    // fscanf(fic, "%s %d %d", texte, &age, &nombre_abonnes);

    // printf("Nom : %s\n", texte);
    // printf("Abonnee : %d\n", nombre_abonnes);


/*-------------------------------------------------------- Ecriture -----------------------------------------*/


    // fputc('R', fic);
    // fputs(mot, fic);
    // fprintf(fic, "%d %s %d", age, pseudo, abonnes);


/*-------------------------------------------------------- Positionnement -----------------------------------------*/

    // printf("Position : %ld\n", ftell(fic));

    // fseek(fic, 5, SEEK_SET);
    // printf("Position : %ld\n", ftell(fic));

    // rewind(fic);
    // printf("Position : %ld\n", ftell(fic));


//  DIVERS

    // rename("profile.save", "news.save"); 

    // remove("sauvegarde.txt");


    fclose(fic);


    return 0;
}