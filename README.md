# OpenVasWPDeploy

Ce dépôt contient des instructions pour déployer OpenVAS sur Windows et Linux à l'aide de Vagrant et VirtualBox.

## Windows

1. **Installer Vagrant** en téléchargeant l'installeur depuis le site officiel : [https://www.vagrantup.com/downloads](https://www.vagrantup.com/downloads)

2. **Installer VirtualBox** version 6.1.44 en téléchargeant l'installeur depuis le site officiel : [https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)

3. **Installer la dépendance VirtualBox CA Certificate** en suivant les instructions disponibles à cette adresse : [https://curl.se/docs/caextract.html](https://curl.se/docs/caextract.html)

4. **Configurer la variable d'environnement** `SSL_CERT_FILE` avec le chemin vers le fichier `cacert.pem` dans votre dossier utilisateur. Exemple : `SSL_CERT_FILE = C:\Users\YourUsername\cacert.pem`

5. **Cloner ce dépôt** en exécutant la commande suivante :
git clone https://github.com/Benji63/OpenVasWPDeploy
