OpenVasWPDeploy
Ce dépôt contient des instructions pour déployer OpenVAS sur Windows et Linux à l'aide de Vagrant et VirtualBox.

Windows
Installer Vagrant en téléchargeant l'installeur depuis le site officiel : https://www.vagrantup.com/downloads

Installer VirtualBox version 6.1.44 en téléchargeant l'installeur depuis le site officiel : https://www.virtualbox.org/wiki/Downloads

Installer la dépendance VirtualBox CA Certificate en suivant les instructions disponibles à cette adresse : https://curl.se/docs/caextract.html

Configurer la variable d'environnement SSL_CERT_FILE avec le chemin vers le fichier cacert.pem dans votre dossier utilisateur. Exemple : SSL_CERT_FILE = C:\Users\YourUsername\cacert.pem

Cloner ce dépôt en exécutant la commande suivante :

bash
Copy code
git clone https://github.com/Benji63/OpenVasWPDeploy
Générer une paire de clés SSH en exécutant la commande suivante :

bash
Copy code
ssh-keygen -t rsa -b 4096 -f $HOME\.ssh\id_rsa
Afficher le contenu de la clé publique générée en exécutant la commande suivante :

bash
Copy code
Get-Content $HOME\.ssh\id_rsa.pub
Accéder au dossier du projet cloné et exécuter le fichier .bat pour lancer le déploiement.

Linux
Importer la clé GPG d'Oracle VirtualBox en exécutant les commandes suivantes :

ruby
Copy code
wget -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --dearmor --yes --output /usr/share/keyrings/oracle-virtualbox-2016.gpg
echo "deb [signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
Installer VirtualBox version 6.1.44 en exécutant les commandes suivantes :

sql
Copy code
sudo apt update
sudo apt install virtualbox-6.1
sudo apt --fix-broken install
sudo apt install virtualbox-6.1
Télécharger et installer l'extension Oracle VM VirtualBox en téléchargeant le fichier .vbox-extpack depuis ce lien : https://download.virtualbox.org/virtualbox/6.1.44/Oracle_VM_VirtualBox_Extension_Pack-6.1.44.vbox-extpack. Ensuite, ouvrir VirtualBox, cliquer sur "Preferences", puis "Extensions", cliquer sur le bouton "+" et ajouter le fichier d'extension téléchargé.

Télécharger le certificat depuis https://curl.se/docs/caextract.html.

Définir le chemin du certificat téléchargé en tant que variable d'environnement.

Générer une paire de clés SSH en exécutant la commande suivante :

bash
Copy code
ssh-keygen -t rsa -b 4096 -f $HOME/.ssh/id_rsa
Installer Git en exécutant la commande suivante :

Copy code
sudo apt install git
Cloner ce dépôt en exécutant la commande suivante :

bash
Copy code
git clone https://github.com/Benji63/OpenVasWPDeploy
Accéder au dossier du projet cloné et exécuter le fichier .sh pour lancer le déploiement.
