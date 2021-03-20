#include <iostream>
#include <limits>


/*
    u, U (non signé)
    l, L (long int ou long double)
    ll, LL (long long int)
    f, F (flottant)
*/





int main()
{
    int someData{56};

    constexpr int MyData = 10;

    const auto nb = static_cast<int>(10);

    // float nb = 14.6;

        // Deduisons du type comme python et autres
    auto dy_data{"gdjdkksks"};

    std::cout << someData <<std::endl;
    std::cout << MyData <<std::endl;
    std::cout << dy_data <<std::endl;

        //  decltype() permet d'affecter à la nouvelle var le type de la variables mise en parametre dans la fonction [decltype()]
    // decltype(dy_data) other_dy_data{"a"};
    decltype(120252) other_dy_data;

    std::cout << other_dy_data <<std::endl;

        // Conversion
    // nb = (int)nb;
    // nb = int(nb);

    std::cout << nb <<std::endl;

        // Usages de la Bibliothèque <limits>
    std::cout << std::numeric_limits<int>::max() << std::endl;

    return 0;
}