## C'est un Tuto basé sur : 

    - Django (pour avoir les metric de l'application Django), 
    - Grafana et Prometheus pour les metrics des differentes contaiers y compris ceux de Django et Autres que l'on va visualiser avec Grafana,
    - Le nom des Dashboard utilisés ici sont pour la visualisation sont : (Node Exporter Full, Cadvisor exporter, Docker and OS metrics)
    - Ensuite le systeme d'Alerting avec Slack ou par Mail.

## Les changements à faire avant le lancement du projet:

    - Changer l'Api de Slack qui permet de communiquer avec votre Slack et aussi le changement de votre Salon de Notification
    - **docker-compose up -d** pour lancer les containers.