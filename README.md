# OpenVasWPDeploy

Ce dépôt contient des instructions pour déployer OpenVAS sur Windows et Linux à l'aide de Vagrant et VirtualBox.

## Windows

1. **Installer Vagrant** en téléchargeant l'installeur depuis le site officiel : [https://www.vagrantup.com/downloads](https://www.vagrantup.com/downloads)

2. **Installer VirtualBox** version 6.1.44 en téléchargeant l'installeur depuis le site officiel : [https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)

3. **Installer la dépendance VirtualBox CA Certificate** en suivant les instructions disponibles à cette adresse : [https://curl.se/docs/caextract.html](https://curl.se/docs/caextract.html)

4. **Configurer la variable d'environnement** `SSL_CERT_FILE` avec le chemin vers le fichier `cacert.pem` dans votre dossier utilisateur. Exemple : `SSL_CERT_FILE = C:\Users\YourUsername\cacert.pem`

5. **Cloner ce dépôt** en exécutant la commande suivante :
git clone https://github.com/Benji63/OpenVasWPDeploy


6. **Générer une paire de clés SSH** en exécutant la commande suivante :
ssh-keygen -t rsa -b 4096 -f $HOME.ssh\id_rsa


7. **Afficher le contenu de la clé publique** générée en exécutant la commande suivante :
Get-Content $HOME.ssh\id_rsa.pub


8. **Accéder au dossier du projet cloné** et exécuter le fichier `.bat` pour lancer le déploiement.

## Linux

1. **Importer la clé GPG d'Oracle VirtualBox** en exécutant les commandes suivantes :

wget -O- https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --dearmor --yes --output /usr/share/keyrings/oracle-virtualbox-2016.gpg
echo "deb [signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list

2. **Installer VirtualBox** version 6.1.44 en exécutant les commandes suivantes :
sudo apt update
sudo apt install virtualbox-6.1
sudo apt --fix-broken install
sudo apt install virtualbox-6.1


3. **Télécharger et installer l'extension Oracle VM VirtualBox** en téléchargeant le fichier `.vbox-extpack` depuis ce lien : [https://download.virtualbox.org/virtualbox/6.1.44/Oracle_VM_VirtualBox_Extension_Pack-6.1.44.vbox-extpack](https://download.virtualbox.org/virtualbox/6.1.44/Oracle_VM_VirtualBox_Extension_Pack-6.1.44.vbox-extpack). Ensuite, ouvrir VirtualBox, cliquer sur "Preferences", puis "Extensions", cliquer sur le bouton "+" et ajouter le fichier d'extension téléchargé.

4. **Télécharger le certificat** depuis [https://curl.se/docs/caextract.html](https://curl.se/docs/caextract.html).

5. **Définir le chemin du certificat** téléchargé en tant que variable d'environnement.

6. **Générer une paire de clés SSH** en exécutant la commande suivante :
ssh-keygen -t rsa -b 4096 -f $HOME/.ssh/id_rsa


7. **Installer Git** en exécutant la commande suivante :
sudo apt install git


8. **Cloner ce dépôt** en exécutant la commande suivante :

git clone https://github.com/Benji63/OpenVasWPDeploy


9. **Accéder au dossier du projet cloné** et exécuter le fichier `.sh` pour lancer le déploiement.
