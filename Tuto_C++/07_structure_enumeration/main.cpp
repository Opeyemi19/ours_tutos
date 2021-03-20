#include <iostream>

/*
    Comme astuce : - Il est très bon de mettre en premiere position le type de variables qui occuppe la plus grande espace mémoire dans notre STRUCTURE.
*/


// Pour Donner un Alias à la structure
using Bete = struct Animal;

struct Animal 
{
    std::string name;
    int ages;
};


// Elle sert à definir les variables qui vont recevoir des valeurs ou non afin d'eviter l'usage des Nombres et autres choses dans les conditions par Ex.
enum Polarity
{
        // Il avance de 1, d'où ici vu qu'on lui est rien affecté donc il va se dire que l'on commence à partir de 0.
    NEGATIVE, //0
    POSITIVE  //1
};


struct Processor
{
    std::string model;
    Polarity p;
    int watts;
};


int main ()
{

    Animal  a{"Panda1", 2};
    Bete  aa{a};

    std::cout << "Nom : " << a.name << std::endl;
    std::cout << "Nom : " << aa.name << std::endl;

    Processor proc{"i7 4770", Polarity::POSITIVE, 120};

    if(proc.p == Polarity::NEGATIVE)
        // std::cout << "NEGATIF" << std::endl; // Ou
        std::cout << proc.p << std::endl; // Donne la valeur de l'enumeration
    else
        // std::cout << "POSITIF" << std::endl; //Ou
        std::cout << proc.p << std::endl; // Donne la valeur de l'enumeration


    return 0;
}


