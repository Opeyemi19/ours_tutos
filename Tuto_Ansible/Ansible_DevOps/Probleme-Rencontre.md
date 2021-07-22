# Les Erreurs avec le Centos 7 lors de l'usage d'Ansible

- Lien qui me semble util avec le playbook montée avec un application PhP
    * https://linux-note.com/ansible-prise-en-main/

- Pour permettre l'authentification par password

    * Erreur ===> Permission denied (publickey,gssapi-keyex,gssapi-with-mic)
        
        Resolution avec ces commandes en dessus sur tous les Serveurs  ou voir ce lien Stackoverflow très explicatif (https://stackoverflow.com/questions/36300446/ssh-permission-denied-publickey-gssapi-with-mic):
        - sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config;
        - sudo systemctl restart sshd;
    
    Et après cela je refais le test et c'est Ok avec la commande **ssh vagrant@IP** et entrer j'entre le password de l'User.

- Ajout Hostname et Ip de toutes dans le chemin Hosts de la machine d'administration

    * vi hosts
    * sudo scp ./hosts /etc/hosts

- Ajout Hostname et Ip de toutes dans le chemin Hosts d'Ansible qui est sur la machine d'administration

    * sudo scp ./hosts  /etc/ansible/hosts

- Create a SSH key and copy to all servers

    ``` shell
    ssh-keygen
    ssh-copy-id localhost
    ssh-copy-id web-app-01 && ssh-copy-id web-app-02
    ```
    * Après cela je peux me connaitre en **ssh hostnameMachine**


- Pour faire un test ansible ping avec  ad-hoc command
    
    * ansible all -i hosts -m ping ===> Retourne une Erreur ===> running /home/vagrant/hosts --list ([Errno 8] Exec format error) [WARNING]:  * Failed to parse /home/vagrant/hosts with yaml plugin: YAML inventory has invalid structure, it should be a dictionary, got: <class 'ansible.parsing.yaml.objects.AnsibleUnicode'>

        - Il fallait avoir un inventory normal car j'ai oublié et j'utilisais le fichier **hosts** qui m' a servi d'ajouter les Hosts sur ma machine Admin. D'où j'ai eu à créer un autre fichier **myhosts** et afin respecter la structure de l'inventory et ensuite retaper la commande :
            
            -   ansible all -i myhosts -m ping (Je ressort avec le message Succès)
            -   ansible all -i mytest -m command -a hostname (Commande pour afficher les HostName)
            - ansible all -i mytest -m copy -a "src=test.txt dest=/tmp/test.txt"
            
            
