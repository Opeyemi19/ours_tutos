# Explication de cours Eazy Training sur Git

- On a eu à installer le Gitlab Localement grâce au fichier docker-compose se trouvant sur le repos Gitlab. On pouvait aussi installer Gitlab par setup sur la machine

- Après le clone, la modif et push du projet vers le repos on a eu à faire des pull et merge request vers le projet GitHub que l'on a Fork et celui qui est sur notre propre repos. Ensuite on a eu fait un remote du projet du Repos principal qui a été forké afin d'avoir la dernière version du repos forké sur mon propre repos, et après le **remote add NomDuReposDistant(Ex: mainProForke)** on fera un push **(push mainProForke master)** sur notre propre repos qui est chez nous car on après le Fork on a eu à créer une Branche sur laquelle j'ai fait mes modifs.

- **git rebase NomBranche** permet de récuperer les commits d'une Branche en les associants avec la branche que l'on veut, car lorsqu'on faire le **merge** directement on supprime l'historiques dees commit que l'User avait créer au par avant.

- **git merge NomBranche** Pour merger le contenue d'une branche vers la branche master en Ex

- **git cherry-pick ID_Commit** Permet de récuperer un des commits d'une autre branche que nous avons besoin pour l'associe au branche Maseter par example.

- **git stash** Il permet de sauvegarder les modifs que l'on etait entraie de faire sur le principe de WIP ce qui va nous permettre de passer une autre chose que l'on veut faire qui est plus important et après revenir sur les modifs mise en WIP cache mais il se peut que lorsque l'on va vouloir merger cela avec nos modifs effectuées on y est des conflits.Mais si l'on vérifie les log des commits on verra que nous sommes toujours notre ancien commit avant le *git stash*(list, pop, apply(avec ID du stash).

- **git squash** Permet de rassembler un lot de commit qui ont le meme objectif en un seul commit afin d'avoir un historique bien propre et pas toufeux.
Pour l'usage de cette commande : git rebase -i ID_Commit

- **git reset** (--soft, --mixed, --hard) (ID_Commit ou HEAD~n-dernier-commit) permet de revenir à un ancien commit tout en supprimant les commits précédents et aussi l'environnement WIP, Index et aussi la référence à la Master . Donc il est plus violant que le checkout.

- **git ls-files -s** pour voir les modifs apportées sur des fichiers en fonctions des commits.

