#include "humain.hpp"
#include <iostream>



int main()
{

    Humain h1{"Riki", 45};
    h1.hello();


    std::cout << h1.getName() << std::endl;
    
    h1.setName("Marc Henry"); // Nous evite de faire en h1.mName = "Marc"; donc il va encapsuler tout cela afin que l'User lambda ne sache pas ce qui se passe en arrière Plan.
    
    std::cout << h1.getName() << std::endl;

    
    return 0;
}