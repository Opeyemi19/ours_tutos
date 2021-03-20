#include "humain.hpp"
#include <iostream>

// Constucteur par defaut car il n'a rien en parametre
// Humain::Humain()
// {
//     mName = "Inconnu";
//     mAge = 1;
// }

    // Autre Syntaxe
Humain::Humain() :  mName("Inconnu"), mAge(1){}

/* ------------------------------------------------------------------------------------------------------ */

// Humain::Humain(std::string name)
// {
//     mName = name;
//     mAge = 1;
// }

    // Autre Syntaxe
Humain::Humain(std::string name) : mName(name), mAge(1){}


/* ------------------------------------------------------------------------------------------------------ */


// Humain::Humain(std::string name = "Inconnu", int age = 1)
// {
//     mName = name;
//     mAge = age;
// }

    // Autre Syntaxe
Humain::Humain(std::string name = "Inconnu", int age = 1) : mName(name), mAge(age){}

/* ------------------------------------------------------------------------------------------------------ */

Humain::Humain(const Humain &other) : mName(other.mName), mAge(other.mAge){}


/* ------------------------------------------------------------------------------------------------------ */

//Destructeur
// Humain::~Humain()
// {
//     std::cout << "Destruction de l'HUMAIN : " << this << std::endl;
// }