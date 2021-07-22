## Le process pour les commandes avec Git natif:
  
- Pour la premier aproche avec le master:

	- **git init** pour l'initialisation du projet
	- Créer un simple fichier
	- **git add .** pour add le fichier
	- **git commit -m "Message"**
	
- Pour la creation de la branch *develop*
	
	- **git branch** pour tchequer les differents branch qui existe
	- **git branch develop** Me permet de créer une branche appelé ***develop***
	- **git branch** on va donc verifier que la branche a été crée
	- **git checkout develop** va nous permettre de switcher vers la nouvelle branche *develop* creer.
	- **git branch** pour tchequer à niveau que le switch à vraiment marché. D'où les commit que l'on va faire seront sur cette branche jusqu'à leur fusion sur le master.

- Pour la creation de la branch *feature*
	
	- **git checkout -b feature/test1 develop** on crée et on switch en même temps sur la branche ***feature/test1***
	- **git branch** pour voir que le switch est OK
	- **git log** pour voir le log des differenets commits que j'ai eu à effectuer sur cette branche *feature*

- Pour effectuer le merge requests des commits de la branche *feature* vers celle de *develop*

	- **git checkout develop** pour revenir sur la branch develop
	- **git merge --no-ff feature/test1** permet merger les commit de la branche feature/test1 vers la branche develop et en plus (--no-ff) pour forcer ce merge s'il y a des conflits
	- **git branch -d feature/test1** supprimera la branche *feature/test1*
	- Si possible fait un push vers la branche en question **git push origin develop**

- Pour creation de la branche **release**

	- **git checkout -b release/v1.2 develop** on crée et on switch en même temps sur la branche **release/v1.2** etant sur la branche *develop*
	- **git add .** pour ajouter les modifs avant de commiter
	- **git commit -m "message"** l'on fait le commit 	
	- **git checkout master(la branche en que l'on veut master ou develop)** on switch sur la branche qui va nous servir de faire le merge request.
	- **git merge --no-ff release/v1.2** on force le merge request
	- **git tag -a v1.2** pour créer le tag **v1.2**
	- **git tag** pour verifier que le Tag a été bien crée.
	- **git branch -d release/v1.2** on cherche à supprimer la branche en question après l'avoir intégrer sur les branche de Prod(master) et Dev(develop)

- Pour la création de la branche **hotfix** pour le dépannage de Bugs Critiques en Prod

	- **git checkout -b hotfix/v1.2.1 master** on crée et on switch en même temps sur la branche **hotfix/v1.2.1** etant sur la branche *master*
	- **git add .** pour ajouter les modifs avant de commiter
	- git commit -m "message" pour commiter la modif
	- **git checkout master(la branche en que l'on veut master ou develop)** on switch sur la branche qui va nous servir de faire le merge request.
        - **git merge --no-ff hotfix/v1.2** on force le merge request
        - **git tag -a v1.2.1** pour créer le tag **v1.2.1**
        - **git tag** pour verifier que le Tag a été bien crée.
        - **git branch -d hotfix/v1.2** on cherche à supprimer la branche en question après l'avoir intégrer sur les branche de Prod(master) et Dev(develop)

























