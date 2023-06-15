# OpenVasWPDeploy

Windows : 

Installer vagrant

Installer virtualbox 6.1.44

Installer la dépendance virtual box

https://curl.se/docs/caextract.html

Configurer la variable d'envrionnement : SSL_CERT_FILE = C:\Users\chemin\cacert.pem

https://github.com/Benji63/OpenVasWPDeploy

ssh-keygen -t rsa -b 4096 -f $HOME\\.ssh\id_rsa

Get-Content ~/.ssh/id_rsa.pub

Aller dans le dossier du projet

Lancer le .bat

Linux : 

wget -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --dearmor --yes --output /usr/share/keyrings/oracle-virtualbox-2016.gpg

echo "deb [signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list

sudo apt install virtualbox-6.1

sudo apt --fix-broken install

sudo apt install virtualbox-6.1

Dl Extensions : https://download.virtualbox.org/virtualbox/6.1.44/Oracle_VM_VirtualBox_Extension_Pack-6.1.44.vbox-extpack

Lancer virtual box 
Cliquer sur preferences --> extension --> plus et ajouter l extension pack telechargé
Fermer virtual box
sudo apt update
sudo apt install virtualbox-ext-pack
Relancer virtual box elles est installée

Télécharger le certificat https://curl.se/docs/caextract.html 

Mettre le path jusqu au certificat en tant que variable d environnement

ssh-keygen -t rsa -b 4096 -f $HOME\.ssh\id_rsa

sudo apt install git 

git clone https://github.com/Benji63/OpenVasWPDeploy

Aller dans le dossier et lancer le .sh
 
