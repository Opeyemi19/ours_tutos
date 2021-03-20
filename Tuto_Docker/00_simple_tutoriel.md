# Simple Tutoriel sur l'outil de conteneurisation: **Docker**.

Les containers sont encore plus léger que les machines virtulles (VM) car ils n'ont pas d'OS mais il fait appel directement à l'OS de la **machine hôte** pour réaliser ses **appels systèmes** et exécuter ses applications.

La conteneuristion est de plus en plus utiliser car les containers sont:

  * Léger,
  * Flexibe,
  * Portable,
  * Interchangeable,
  * Evolutif,
  * etc

**Docker** est l' une des technologies de conteneurisation la plus utilisée, Donc nous allons commencer à interagir avec cette technologies.

##  Qu'est ce que **Docker** ?

  Docker est une technologie open source qui est utilisée pour déployer des applications à travers des conteneurs. C’est une technologie qui est constamment améliorée ! Docker est très populaire auprès des développeurs et peut être installé sans problème dans notre distribution préférée. Découvrez ci-dessous comment installer Docker sur Ubuntu 20.04 LTS !

## Comment installer Docker sur un OS Ubuntu 20.04 LTS.

   1- Mis à jour votre système: 
    
    sudo apt-get update
        
    sudo apt-get upgrade
    
   2- Installations des packages:
   
    sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
  
   3- Ajout de la clé GPG:
   
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    
   4- Ajoutons le repository pour les systèmes **x86_64/amd64** c'est-à-dire 32 ou 64bits:
   
    sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"
    
   5- Installations de DOCKER ENGINE:
   
   D'abord on va refaire un *update*:
   
    sudo apt-get update
   
   Ensuite faire l'installation des packages:
   
    sudo apt-get install docker-ce docker-ce-cli containerd.io
   
   6- Après l'installations des pacakges, vous pouvez vérifier si **docker** a été installé correctement on peut utiliser l'image de Test:
   
    sudo docker run hello-world
  
## Installation de Docker sur Mac

  > https://docs.docker.com/docker-for-mac/install/
   
## Installation de Docker sur Windows

  > https://docs.docker.com/docker-for-windows/install/
   
## Après l'installation de Docker, vous allez voir les différentes commandes utiles et les plus utilisées dans Docker.

  * Pour cloner (*run*) une image docker qui est stocké dans le **docker hub** (C'est une plate-forme qui héberge nos différentes images buildés)

     > docker run --name nom_container -p port_externe_conteneur:port_interne_conteneur  -itd image_docker
       
       **port_externe_conteneur** : C'est le port sur quel on aura accès à notre image depuis le navigateur
         
       **port_interne_conteneur** : C'est le port sur quel tourne notre image en interne c'est-à-dire dans le container.
    
      Example: 
      
       * docker run --name mon-image-nginx -p 8000:80 -itd nginx
       
          - Donc après l'image clonée, on peut donc avoir accès au projet nginx en tapant localhost:8000 ou 127.0.0.1:8000 dans le navigateur.
          
       ![](https://github.com/Opeyemi19/Astuces_Generale/blob/master/images/Image_Nginx_Run.png)
  
  * Pour voir que le conteneur est en cours:
  
     > docker ps
     
       ![](https://github.com/Opeyemi19/Astuces_Generale/blob/master/images/list-container.png)
     
  * Pour voir tous les containers (en cours et aussi ceux qui sont stoppés): 

    > docker ps -a
    
       ![](https://github.com/Opeyemi19/Astuces_Generale/blob/master/images/allcontainer.png)
  
  * Pour avoir accès au contenu du container Nginx dans notre cas:
  
    > docker exec -t -i nom-attribué-au-container /bin/bash

       Example :
       
       * docker exec -t -i mon-image-nginx /bin/bash
       
       ![](https://github.com/Opeyemi19/Astuces_Generale/blob/master/images/exec-image.png)
       
  * Pour stopper un container, d'où nous allons stopper le container en cours:
  
    > docker stop mon-image-nginx
    
    ![](https://github.com/Opeyemi19/Astuces_Generale/blob/master/images/docker-stop-image.png)

     Donc ici on constacte que juste après avoir stopper le container le **docker ps** me rétourne rien et avec celui de **docker ps -a** on a notre image qui n'est plus en cours.
     
  * Pour redémarrer notre container stopper:
  
    > docker start mon-image-nginx
    
    ![](https://github.com/Opeyemi19/Astuces_Generale/blob/master/images/start-container.png)

     Donc ici on constacte que juste après avoir redemarrer le container le **docker ps** nous rétourne notre container construit sur l'image **Nginx** et avec celui de **docker ps -a** on a notre image qui est en cours.

  Nous allons maintenant voir une dernière commande pour se Tutoriel sur Docker. c'est le fonctionnement des Volumes.
  
  * Les volumes nous permettent de stocker les données (images, videos, fichiers, etc) utils pour le fonctionnement de notre container. les données sont stockés dans nos différents volumes créé et qui seront en relation avec le container.
 
     * Sur une distribution Linux pour accéder au volume : (**/var/lib/docker/volumes/**); Donc avec ceci vous pouvez switcher dans les differents dossiers crée.
   
       - Première Partie
           
            Ici on verra les commandes de base dedié au Volume.
   
            1- Pour créer un volume:

            > docker volume create mytestvolume

            2- Pour lister un volume:

            > docker volume list

            3- Pour inspecter un volume précis afin d'avoir des informations sur ce volume, par example le Chemin du volume:

            > docker volume inspect mytestvolume

            4- Pour supprimer un volume:

            > docker volume rm mytestvolume

          ![](https://github.com/Opeyemi19/Astuces_Generale/blob/master/images/4-docker-volume-commande.png)
       
       - Deuxième partie
        
            Ici on verra l'insertion des Options pour créer directement les volumes lorsque nous voulions creér un container grace à une image ces deux Options sont : **-v ou --volume** et **--mount**
            
            * Pour le **-v**:
              
              Celui ci combine tous les parametres et ne nous permet pas de décrypter les parametres; D'où il encapsulé dans la seule commande qui est ***-v ou --volume***
              
               (-v Nom_Volume:Chemin_ou_se_trouve_la_data)
               
                 Example:
                  
                    docker run -d \
                    --name test-nginx \
                    -v mydatanginx:/app \
                    nginx:latest
                    
                ![](https://github.com/Opeyemi19/Astuces_Generale/blob/master/images/create_volume_v.png)
                
               Nous constactons qu'il a crée notre volume qui interagit avec le nouveau container *test-nginx*. D'où ce volume peut être associer avec d'autres container.
               
            * Pour le **--mount**:
            
              Avec celui là, les choses sont encore plus explicite et tu as accès aux differenets parametres que contient le principes de volumes. Donc il est décrypté et il est sous la forme de (Clé, Valeur)
              
               (--mount Key=Value,Key=Value, Key=Value)
               
                 Example: 
                  
                   docker run -d \
                   --name test-nginx-1 \
                   -p 8001:80 \
                   --mount source=mydatanginxmount,target=/app \
                   nginx:latest
                  
                 ![](https://github.com/Opeyemi19/Astuces_Generale/blob/master/images/data-volume-mount.png)
                  
                On constacte qu'il a crée notre volume comme on le voulait si bien, et là j'ai ajouté le Port pour lancer le container afin d'avoir un rendu dans le navigateur.
               

## Lien direct vers le site de Docker concernant ce Tutoriel:

  > https://docs.docker.com/engine/reference/run/
  
  > https://docs.docker.com/storage/volumes/

## Autres lien explicatif
   
   > https://devopssec.fr/category/apprendre-docker
