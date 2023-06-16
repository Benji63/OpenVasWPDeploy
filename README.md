# OpenVasWPDeploy
**Ce dépôt contient des instructions pour déployer OpenVAS sur Windows et Linux à l'aide de Vagrant et VirtualBox.**

## 🛠️Windows : 


1.  **Installer Vagrant** en téléchargeant l'installeur depuis le site officiel [ICI](https://developer.hashicorp.com/vagrant/downloads?product_intent=vagrant)

2. **Installer virtualbox 6.1.44** [ICI](https://www.virtualbox.org/wiki/Download_Old_Builds_6_1) ( Cliqué sur *Windows Hosts*)

3. **Installer la dépendance VirtualBox CA Certificate** en suivant les instructions disponibles [ICI](https://download.virtualbox.org/virtualbox/6.1.44/Oracle_VM_VirtualBox_Extension_Pack-6.1.44.vbox-extpack)

4. **Installer une variable d'environement**[ICI](https://curl.se/docs/caextract.html) (*la derniere en date*)

5.  **Copier**  la dans votre dossier puis faite en un raccourci 
6. **Copier le chemin** entier de votre raccourci *(clique droit -> proprieté -> Emplacement :* )

7. Rechercher `Variables` dans la barre de recherche windows puis cliqué sur `Modifier les variables d'environements`
8. Cliqué sur `Variable d'environement`
9. Faite en une nouvelle dans la partie `Variables Utilisateur`

10. Donné comme nom : `SSL_CERT_FILE `
11. Mettez le chemin du raccourci que vous avez auparavant copié dans `Valeur de la Variable`
12. **Cloner ce dépôt** en exécutant la commande suivante : https://github.com/Benji63/OpenVasWPDeploy
13. **Générer une paire de clés SSH** en exécutant la commande suivante dans un **powershell** en Admin :
ssh-keygen -t rsa -b 4096 -f $HOME.ssh\id_rsa

14. Si code d'erreur il faudra crée un dossier dans votre repertoire utilisateur avec comme nom : `.ssh`

15. **Aller dans le dossier du projet**

16. Lancer en administrateur : `LaunchVagrant.bat`

## 🛠️Linux

#### Ce tuto se realisera sous une distrubution UbuntuDesktop

1. Recuperer les paquet  VirtualBox :


```
 wget -O-https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --dearmor --yes --output /usr/share/keyrings/oracle-virtualbox-2016.gpg
```


2. Specifier des chemins d'acces au paquet pour les commande `apt` :

```
echo "deb [signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
```
3. Installer le logiciel VirtualBox

```
sudo apt install virtualbox-6.1

sudo apt --fix-broken install

sudo apt install virtualbox-6.1
```

4. Installer les extensions de VirtualBox 

```
https://download.virtualbox.org/virtualbox/6.1.44/Oracle_VM_VirtualBox_Extension_Pack-6.1.44.vbox-extpack
```
5. Installer Vagrant :

```
sudo apt install virtualbox
```

6. Lancer virtual box Cliquer sur preferences 

    - Aller dans extension 

    - Cliqué sur plus puis ajouter l'extension pack telechargé auparavent
    - Fermer virtual box

7. Faire la mise a jour des paquet 

```
sudo apt update | apt upgrade
```
8. Installer enfin le pack d'extension de VirtualBox : 
 
```
sudo apt install virtualbox-ext-pack Relancer virtual box elles est installée
```

9. Télécharger le certificat depuis le naviguateur :  (https://curl.se/ca/cacert-2023-05-30.pem)

10. **Depuis un CMD** mettre le path jusqu au certificat en tant que variable d environnement

```
ssh-keygen -t rsa -b 4096 -f $HOME.ssh\id_rsa
```
11. Intaller Git

```
sudo apt install git
```
12. Enfin cloner le projet dans le dossier de votre choix (via la commande `cd`): 

```
git clone https://github.com/Benji63/OpenVasWPDeploy
```
13. Aller dans le dossier 

```
cd OpenVasWPDeploy
```
14. Lancé la commande : 

```
LaunchVagrantLinux.sh
```



        
