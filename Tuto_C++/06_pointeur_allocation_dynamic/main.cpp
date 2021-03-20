#include <iostream>
#include <memory>


int main()
{
    // Pointeur Unique, l'usage des pointeurs intelligent est qu'il sera detruite des la fin de Fonctions
    auto pNumber{std::make_unique<int>(16)};

    std::cout << *pNumber << std::endl;


    auto tab{std::make_unique<int[]>(1000)};

    // std::cout << &tab << std::endl;

    // Les Pointeurs Partagées

    int a = 16;std::cout << *pNumber << std::endl;
    int *ptr;
    ptr = &a;
    std::shared_ptr<int> pNumber1{std::make_shared<int>(*ptr)};

    std::cout << *pNumber1 << std::endl;


    return 0;
}