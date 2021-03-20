#include "humain.hpp"
#include <iostream>

// Constucteur par defaut car il n'a rien en parametre

Humain::Humain() :  mName("Inconnu"), mAge(1){}

/* ------------------------------------------------------------------------------------------------------ */


Humain::Humain(std::string name) : mName(name), mAge(1){}


/* ------------------------------------------------------------------------------------------------------ */


Humain::Humain(std::string name = "Inconnu", int age = 1) : mName(name), mAge(age){}

/* ------------------------------------------------------------------------------------------------------ */


Humain::Humain(const Humain &other) : mName(other.mName), mAge(other.mAge){}


/* ---------------------------------------------------- LES ACCESSEURS-------------------------------------------------- */

// Le Getter
std::string Humain::getName() const {return mName;}


// Le Setter
void Humain::setName(const std::string name) {mName = name;}



/* ---------------------------------------------------- LES METHODES-------------------------------------------------- */
void Humain::hello() {std::cout << "Hello !" << std::endl;}