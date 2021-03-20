#include <iostream>
#include <iomanip>



/*
    C++11 : >= 4.8.1
    C++14 : >= 6.1
    C++17 : >= 7.0


    g++ -std=c++14 <fichier> -o nomprogramme

    cout, cerr, clog

    Décimale : 0 à 9        (std::dec)
    Octale : 0 à 7          (std::oct)
    Hexadécimale : 0 à F    (std::hex)

*/


int main()
{
    // std::cout << std::hex;
    // std::cout << 15236 << std::endl;
    // std::cout << 236 << std::endl;
    // std::cout << std::dec;
    // std::cout << 96541 << std::endl;
    // std::cout << 695 << std::endl;
    // std::cout << "Bonjour tout le monde" << std::endl;

    // Mettre tous la structure sur une ligne;

        // std::cout << std::hex << 962015 << std::endl << 14236 << std::endl << std::dec << 41 << std::endl;

        // std::cout << std::scientific << 96.267 << std::endl;

    //  

    /*
        std::left    ->  w---------------
        std::right    ->  ---------------w
    */

    std::cout << "Normal : " << 1.35 << std::endl;   
    std::cout << "Showpoint : " << std::showpoint << 1.35 << std::endl;   
    std::cout << "Noshowpoint : " << std::noshowpoint << 1.35 << std::endl;   

    // Gestion des Espace avec la bibliothèque (iomanip)

    std::cout << std::setw(15) << "Sodik" << std::endl;
    std::cout << std::setfill('-') << std::setw(15) << "Sodik" << std::endl;
    std::cout << std::left << std::setfill('-') << std::setw(15) << "Sodik" << std::endl;
    std::cout << std::right << std::setfill('-') << std::setw(15) << "Sodik" << std::endl;

    return 0;
}