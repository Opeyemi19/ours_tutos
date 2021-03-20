#include <iostream>


/*
    FONCTIONS LAMBDA - CAPTURE

    [&]     :   toutes variables par références
    [=]     :   toutes variables par valeur

    [var]   :   "var" par valeur
    [&ar]   :   "var" par reference


*/




// Une fonction de reference
void calltest(int &n)
{
    n = 16;
}

// Les fonctions de meme Nom avec des types differente
// int sum(int a, int b)
// {
//     return a + b;
// }


// double sum(double a, double b)
// {
//     return a + b;
// }

// Pour remedier à ce probleme qui va nous permettre de creer plusieurs fonctions pour les differents types alors on va opter pour l'usage des [Template] en C++
template<typename T>
T sum(T a, T b)
{
    return a + b;
}





int main()
{
// Usage avec les fonction de referencement
    // auto n{1};

    // std::cout << "Avant l'appel de la fonction de reference : " << n << std::endl;
    
    // calltest(n);

    // std::cout << "Après l'appel de la fonction  reference : " << n << std::endl;

// 
    auto nb1{16.2};
    auto nb2{5.1247};
    
    std::cout << sum<int>(nb1, nb2) << std::endl;


// Usage de la fonction Lambda et cette fonction peut etre comme parametre dans une autre fonctions et autres


    auto sum = [](auto a, auto b){return a + b;};

    std::cout << "La fonction lambda : " << sum(25, 8) << std::endl;

// Usage de fonction Lambda avec le referenece
    auto nb3{2};
    auto nb4{85};

    auto sumRef = [&](auto a, auto b){return a + b + nb3 + nb4;};

    std::cout << "La fonction lambda avec Reference : " << sumRef(25, 8) << std::endl;


// Usage de fonction Lambda avec le referenece et Valeur
    
    auto sumRefValeu = [&nb3, nb4](auto a, auto b){return a + b + nb3 + nb4;};

    std::cout << "La fonction lambda avec Reference et valeur : " << sumRefValeu(2, 8) << std::endl;



    return 0;
}