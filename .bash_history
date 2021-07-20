logout
clear
ssh vagrant@192.168.50.102
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config;
sudo systemctl restart sshd;
ssh vagrant@192.168.50.102
clear
vi hosts
sudo scp ./hosts /etc/hosts
ssh-keygen
ssh-copy-id localhost
ssh-copy-id web-app-01 && ssh-copy-id web-app-02
clear
ssh web-app-01
ls
mytest
vi mytest
ansible webstack -i mytest -m command -a hostname
sudo yum install ansible git -y
clear
ansible webstack -i mytest -m command -a hostname
ansible all -i mytest -m command -a hostname
ansible all -i mytest -m ping
clear
ansible all -i mytest -m command -a hostname
clear
ls
ansible -i hosts all -m copy -a “dest=/home/admin/toto.txt content=’bonjour eazytraining'”
ansible -i hosts all -m copy -a “dest=/home/vagrant/toto.txt content=’bonjour eazytraining'”

"
"
"





ansible -i hosts all -m copy -a “dest=/home/vagrant/toto.txt content=’bonjour eazytraining'”



















ansible -i mytest all -m copy -a “dest=/home/vagrant/toto.txt content=’bonjour eazytraining'"


"
"
"
"
"
"
"
"
"
"
"
"
"
"



clear
sudo ansible -i mytest all -m copy -a “dest=/home/vagrant/toto.txt content=’bonjour eazytraining'"

"
"
"
""
"""""""""

clear
vi test.txt
sudo ansible all -i mytest -m copy -a “dest=/home/vagrant/toto.txt content=’bonjour eazytraining'"
"
"

"
clear
ansible all -i hosts -m copy -a "src=text.txt dest="/tmp/test.txt"










ansible all -i hosts -m copy -a "src=text.txt dest="/tmp/test.txt"


ansible all -i mytest -m ping
clear
ansible managed_node -i inventory \ ## tells Ansible which inventory file to use
 -m copy \ ## tells Ansible which module to load,
clear
ansible managed_node -i inventory -m copy -a "src=test.txt dest=/tmp/test.txt"
ansible all -i mytest -m copy -a "src=test.txt dest=/tmp/test.txt"
clear
ansible -i mytest all -m setup
clear
ansible -i mytest all -m setup
clear
ls
mytest.ym
vi mytest.ym
vi mytest.yml
rm -f mytest.ym
ansible -i mytest.yml
ansible-playbook -i mytest.yml
ansible-playbook mytest.yml
vi mytest.yml
ansible-playbook -i mytest.yml all -m ping
ansible-playbook -i mytest.yml all
vi mytest.yml
clear
logout
clear
ls
clear
vi hosts.ini
ansible -i hosts.ini prod -m ping
vi hosts.ini
ansible -i hosts.ini prod -m ping
ansible -i hosts.ini web-app-01 -m ping
vi hosts.ini
ansible -i hosts.ini web-app-02 -m ping
clear
vi hosts.ini
ansible -i hosts.ini all -m copy -a “dest=/home/admin/toto.txt content=’bonjour eazytraining {{ env }}'”



clear
ansible -i hosts.ini all -m copy -a “dest=/home/admin/toto.txt content=’bonjour eazytraining {{ env }}'”
clear
ansible -i hosts.ini all -m copy -a "dest=/home/admin/toto.txt content=’bonjour eazytraining {{ env }}'"
ansible -i hosts.ini all -m copy -a `dest=/home/admin/toto.txt content=’bonjour eazytraining {{ env }}'`
clear
ansible -i hosts.ini all -m copy -a “dest=/home/admin/toto.txt content=’bonjour eazytraining {{ env }}'”
ansible -i hosts.ini all -m copy -a “dest=/home/admin/toto.txt content='bonjour eazytraining {{ env }}'”
ansible -i hosts.ini all -m copy -a "dest=/home/admin/toto.txt content='bonjour eazytraining {{ env }}'"
ansible -i hosts.ini all -m copy -a "dest=/home/vagrant/toto.txt content='bonjour eazytraining {{ env }}'"
clear
ssh web-app-01
clear
vim hosts.yml
ansible -i hosts.ini all -m copy -a "dest=/home/vagrant/toto1.txt content='bonjour eazytraining, c'est un test de {{ env }}'"
ansible -i hosts.ini all -m copy -a "dest=/home/vagrant/toto1.txt content="bonjour eazytraining, c'est un test de {{ env }}""
ansible -i hosts.ini all -m copy -a "dest=/home/vagrant/toto1.txt content='bonjour eazytraining, c est un test de {{ env }}'"
clear
ansible -i hosts.yml all -m copy -a "dest=/home/vagrant/toto1.txt content='bonjour eazytraining, c est un test de {{ env }}'"
ls
vim hosts.yml
ansible -i hosts.yml all -m copy -a "dest=/home/vagrant/toto1.txt content='bonjour eazytraining, c est un test de {{ env }}'"
vim hosts.yml
ansible -i hosts.yml all -m copy -a "dest=/home/vagrant/toto1.txt content='bonjour eazytraining, c est un test de {{ env }}'"
vim hosts.yml
clear
ansible -i hosts.yml all -m copy -a "dest=/home/vagrant/toto1.txt content='bonjour eazytraining, c est un test de {{ env }}'"
ssh web-app-01
clear
ansible -i hosts.yml all -m copy -a "dest=/home/vagrant/toto1.txt content='bonjour eazytraining, c est un test de {{ env }}'"
ssh web-app-01
clear
 mdir webapp
 mkdir webapp
cd webapp/
ls
vim hosts.yml
cd ..
ls
cd webapp/
cat ../hosts.yml 
vi hosts.yml
clear
mkdir group_vars
cd group_vars/
cd ..
vi group_vars/prod.yml
vi ./hosts.yml 
vi group_vars/prod.yml
ls
vi deploy.yml
sudo yum install python-pip
clear
sudo yum install python-pip
sudo pip install ansible-lint
pip install --upgrade pip
sudo pip install --upgrade pip
sudo pip install ansible-lint
ansible-lint
clear
sudo pip3 install ansible-lint
pip install ansible-lint
pip --version
sudo yum remove python-pip
clear
pip install ansible-lint
sudo yum -y install wget
wget https://www.python.org/ftp/python/3.8.3/Python-3.8.3.tgz
tar xvf Python-3.8.3.tgz
cd Python-3.8*/
./configure --enable-optimizations
sudo make altinstall
cd -
python3.8 --version
pip3.8 --version
pip3 --version
pip --version
pip3 --version
yum search -v pip
sudo yum install python34-setuptools
sudo easy_install-3.4 pip
pip3 --version
pip --version
sudo pip install ansible-lint
sudo pip3 install ansible-lint
clear
cd webapp/
ls
vi deploy.yml 
ansible-playbook -i hosts.yml deploy.yml 
vi deploy.yml 
ansible-playbook -i hosts.yml deploy.yml 
vi deploy.yml 
ansible-playbook -i hosts.yml deploy.yml 
vi deploy.yml 
ansible-playbook -i hosts.yml deploy.yml 
vi deploy.yml 
ansible-playbook -i hosts.yml deploy.yml 
vi deploy.yml 
ansible-playbook -i hosts.yml deploy.yml 
vi deploy.yml 
clear
logout
ansible-playbook -i hosts.yml deploy.yml 
cd webapp/
ls
ansible-playbook -i hosts.yml deploy.yml 
vi deploy.yml
clear
vi ansible.cfg
ls
mkdir templates
cd templates/
touch index.html
rm -f index.html
vi index.html.j2
cd ../webapp/
ls
vi deploy.yml 
vi deploy1.yml 
vi deploy2_templating.yml 
vi deploy1.yml
vi deploy.yml
vi deploy1.yml
logout
clear
vi deploy1.yml
ls
cp templates/ ./webapp/
cp ./templates/ ./webapp/
cp ./templates* ./webapp/
cp ./templates/* ./webapp/
ls
cd webapp/
ls

mkdir templates
cp ./index.html.j2 templates/
ls
clear
ls
vi deploy1.yml 
vi deploy.yml 
vi deploy1.yml 
vi deploy2_template.yml
ls ../
cp ../ansible.cfg ./
ls
clear
vi deploy.yml 
ls
vi hosts.yml
clear
ls
ls templates/
rm -f index.html.j2
clear
ls
mkdir -p files/secrets
vi files/secrets/credentials.yml
ansible-vault encrypt files/secrets/credentials.yml
vi files/secrets/credentials.yml
clear
ls
vi deploy2_template.yml 
vi deploy3_securite.yml 
vi group_vars/prod.yml 
vi files/secrets/credentials.yml
ansible-vault dencrypt files/secrets/credentials.yml 
ansible-vault decrypt files/secrets/credentials.yml 
vi files/secrets/credentials.yml
ansible-vault encrypt files/secrets/credentials.yml 
vi group_vars/prod.yml
grep -r "ansible_password"
clear
logout
clear
ls
rm -rf Python-3.8.3 Python-3.8.3.tgz templates/
sudo rm -rf Python-3.8.3 Python-3.8.3.tgz templates/
clear
ls
rm -f ansible.cfg 
clear
ls
cd webapp/
clear
ls
mkdir roles
vi roles/requirements.txt
vi wordpress.yml
ansible-galaxy install -r roles/requirements.yml
ls
ansible-galaxy install -r roles/requirements.txt
vi roles/requirements.yml
vi roles/requirements.txt
vi roles/requirements.yml
ansible-galaxy install -r roles/requirements.yml
vi roles/requirements.yml
ansible-galaxy install -r roles/requirements.yml
vi wordpress.yml
clear
logout
ls
clear
scp -r ope@192.168.1.102
ls
scp -r ope@192.168.1.102:/root/ /home/ope/Documents/TutoVagrant/FormationEasyTraining/VmAnsible/ansible_course
sudo scp -r ope@192.168.1.102:/root/ /home/ope/Documents/TutoVagrant/FormationEasyTraining/VmAnsible/ansible_course
clear
sudo scp -r vagrant@192.168.50.100:/root/ /home/ope/Documents/TutoVagrant/FormationEasyTraining/VmAnsible/ansible_course
ls /root/
cd /root/
sudo cd /root/
ls
sudo scp -r vagrant@192.168.50.100:/root/ /home/ope/Documents/TutoVagrant/FormationEasyTraining/VmAnsible/ansible_course
clear
sudo scp -r vagrant@ansible-admin:/root/ /home/ope/Documents/TutoVagrant/FormationEasyTraining/VmAnsible/ansible_course
scp -r vagrant@ansible-admin:/root/ /home/ope/Documents/TutoVagrant/FormationEasyTraining/VmAnsible/ansible_course
cd ~/.ssh/
ls
vi known_hosts
clear
cd ..
ls
scp -r vagrant@ansible-admin:/root/ /home/ope/Documents/TutoVagrant/FormationEasyTraining/VmAnsible/ansible_course
sudo scp -r vagrant@ansible-admin:/root/ /home/ope/Documents/TutoVagrant/FormationEasyTraining/VmAnsible/ansible_course
sudo scp -r vagrant@ansible-admin:./ /home/ope/Documents/TutoVagrant/FormationEasyTraining/VmAnsible/ansible_course
sudo scp -r vagrant@ansible-admin:/ /home/ope/Documents/TutoVagrant/FormationEasyTraining/VmAnsible/ansible_course
sudo scp -r vagrant@ansible-admin:/root/ /home/ope/Documents/TutoVagrant/FormationEasyTraining/VmAnsible/ansible_course
clear
/root/
clear
ls
pwd
sudo scp -r vagrant@ansible-admin:/home/vagrant/ /home/ope/Documents/TutoVagrant/FormationEasyTraining/VmAnsible/ansible_course
clear
pwd
ls
sudo scp -r vagrant@ansible-admin:/home/vagrant/ /home/ope/Documents/TutoVagrant/FormationEasyTraining/VmAnsible/ansible_course
clear
scp -r vagrant@ansible-admin:/home/vagrant/* /home/ope/Documents/TutoVagrant/FormationEasyTraining/VmAnsible/ansible_course
clear
scp -r vagrant@ansible-admin:/home/vagrant/webapp/ /home/ope/Documents/TutoVagrant/FormationEasyTraining/VmAnsible/ansible_course
scp -r vagrant@ansible-admin:/home/vagrant/webapp/ /home/ope/Téléchargements
scp -r vagrant@ansible-admin:/home/vagrant/webapp/ /home/ope/Documents/TutoVagrant/FormationEasyTraining/VmAnsible/ansible_course/
clear
scp -r vagrant@192.168.50.100:/home/vagrant/webapp/ /home/ope/Documents/TutoVagrant/FormationEasyTraining/VmAnsible/ansible_course/
clear
scp vagrant@192.168.50.100:/home/vagrant/hosts.yml /home/ope/Téléchargements
rsync -avzh --stats --progress remote vagrant@192.168.50.100:/home/vagrant/ /home/ope/Documents/TutoVagrant/FormationEasyTraining/VmAnsible/ansible_course
rsync -avzh --stats --progress remote vagrant@192.168.50.100:/home/vagrant/* /home/ope/Documents/TutoVagrant/FormationEasyTraining/VmAnsible/ansible_course
rsync -avzh --stats --progress remote vagrant@192.168.50.100:/home/vagrant/webapp/ /home/ope/Documents/TutoVagrant/FormationEasyTraining/VmAnsible/ansible_course
scp vagrant@192.168.50.100:/home/vagrant/hosts.yml /home/ope/Téléchargementsclear
clear
scp -P 22 vagrant@192.168.50.100:/home/vagrant/hosts.yml /home/ope/Téléchargements
scp -r /home/vagrant/* ope@192.168.1.102:/home/ope/Documents/TutoVagrant/FormationEasyTraining/VmAnsible/ansible_course
sudo scp vagrant@192.168.50.100:/home/vagrant/hosts.yml /home/ope
sudo scp -r vagrant@192.168.50.100:/home/vagrant/webapp/ /home/ope
sudo scp vagrant@192.168.50.100:/home/vagrant/hosts.yml /home/ope
pwd
ls
sudo scp vagrant@192.168.50.100:/home/vagrant/hosts.yml /home/ope/Bureau
sudo scp vagrant@192.168.50.100:/home/vagrant/hosts.yml /home/ope/
clear
sudo scp vagrant@192.168.50.100:/home/vagrant/hosts.yml /home/ope/
sudo scp vagrant@192.168.50.100:/home/vagrant/hosts.yml /home/ope/Documents/TutoVagrant/FormationEasyTraining/VmAnsible/ansible_course
sudo scp vagrant@192.168.50.100:/home/vagrant/webapp/ /home/ope/Documents/TutoVagrant/FormationEasyTraining/VmAnsible/ansible_course
sudo scp -r vagrant@192.168.50.100:/home/vagrant/webapp/ /home/ope/Documents/TutoVagrant/FormationEasyTraining/VmAnsible/ansible_course
sudo scp -r vagrant@192.168.50.100:/home/vagrant/webapp /home/ope/Documents/TutoVagrant/FormationEasyTraining/VmAnsible/ansible_course/
sudo scp -r vagrant@192.168.50.100:/home/vagrant/webapp .
ls
sudo scp -r vagrant@192.168.50.100:/home/vagrant/webapp /home/ope
sudo scp -r vagrant@192.168.50.100:/home/vagrant/webapp /home/ope/
ls
cd ..
ls
cd ope
rm -rf ope
sudo rm -rf ope
ls
cd vagrant/
ls
cd ..
ls
clear
cd home/vagrant/
ls
logout
ls
sudo scp -r vagrant@192.168.50.100:/home/vagrant/webapp /home/ope/Documents/TutoVagrant/FormationEasyTraining/VmAnsible/ansible_course
sudo scp -r vagrant@192.168.50.100:/home/vagrant/webapp/* /home/ope/Documents/TutoVagrant/FormationEasyTraining/VmAnsible/ansible_course/
clear
sudo scp -r vagrant@192.168.50.100:/home/vagrant/webapp /home/ope/Documents/TutoVagrant/FormationEasyTraining/VmAnsible/ansible_course/
sudo scp -r ope@ope:/home/vagrant/webapp /home/ope/Documents/TutoVagrant/FormationEasyTraining/VmAnsible/ansible_course/
logout
