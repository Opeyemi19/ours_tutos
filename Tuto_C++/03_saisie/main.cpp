#include <iostream>
#include <string>
#include <limits>


/*
    std::cin.clear()
    std::cin.ignore()
    std::cin.good() | std::cin.bad() | std::cin.fail() | std::cin.eof()


    std::getline(<flux>, <string> [, delimiter])
*/



int main()
{
    int number{0};


    // std::cout << "Entrez un nombre :";

    // std::cin >> number;
    // std::cout << "Nombre : " << number << std::endl;

    // std::cin >> number;
    // std::cout << "Nombre : " << number << std::endl; 


    std::string name{};

    std::cout << "Comment vous appelez-vous ? : ";

    // std::getline(std::cin, name);

    std::cin >> name;
    std::cout << "Tu t'appeles : " << name << std::endl;

        // On va cline le buffer (la memoire Tampon) ce qui va nous permet de demander à saisir une valeur encore 
    std::cin.clear();
    std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');

    std::cin >> name;
    std::cout << "Tu t'appeles : " << name << std::endl; 


    return 0;

}