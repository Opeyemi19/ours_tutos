#include "humain.hpp"
#include <iostream>

// Constucteur par defaut car il n'a rien en parametre
Humain::Humain()
{
    std::cout << "Construction de l'HUMAIN : " << this << std::endl;
}

//Destructeur
Humain::~Humain()
{
    std::cout << "Destruction de l'HUMAIN : " << this << std::endl;
}