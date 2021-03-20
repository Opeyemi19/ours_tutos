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


            // Accesseurs 
                    /* 
                        - Pour acceder aux differents elements car on ne fournit pas des infos sensible(Infos de la partie <private>) à l'user au de l'afficheage.
                          Donc grâce à cela on peut avoir accès aux attribut mais sans que l'user ne sache ce qu'il se passe en arriere plan.
                    
                    */
                
                // Getter 
            std::string getName() const;

                // Setter
            void setName(const std::string name);


                // Methode
            void hello();


            // Attribut
        private:
            std::string mName;
            int mAge;    

    };


#endif