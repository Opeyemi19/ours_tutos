#if !defined(__HUMAN__)
#define __HUMAN__

    #include <string>

    class Humain
    {
        public:
            Humain();   //Constructeur par defaut
            Humain(std::string name);
            Humain(std::string name, int age);
            Humain(const Humain &other);
            
            
            // ~Humain(); //Destructeur


            // Attribut
        private:
            std::string mName;
            int mAge;    

    };


#endif