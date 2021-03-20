#include <iostream>

#include <iterator>

int main()
{

    int tab[2] = {1, 2};

    std::cout << "Taille du tableau : " << std::size(tab) << std::endl;

    // int a[] = { -5, 10, 15 };
    // std::cout << std::size_t(a) << '\n';

    for(int i{}; i < std::size(tab); i++)
        std::cout << tab[i] << std::endl;


    return 0;
}