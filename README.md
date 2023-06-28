# OpenVasWPDeploy

![Image](https://i.ibb.co/FJgcYt0/Group-10.png)
        
**Ce dépôt contient des instructions pour déployer OpenVAS sur Windows et Linux à l'aide de Vagrant et VirtualBox.**
## 💻Prerequis : 
-  Windows 10/11 - ubuntu desktop
- 16 Go de RAM
- 50 Go de Stockage
- Processeur Recent

## 🛠️Windows : 


1.  **Installer Vagrant** en téléchargeant l'installeur depuis le site officiel [ICI](https://releases.hashicorp.com/vagrant/2.3.7/vagrant_2.3.7_windows_amd64.msi)

2. **Installer virtualbox 6.1.44** [ICI](https://download.virtualbox.org/virtualbox/6.1.44/VirtualBox-6.1.44-156814-Win.exe)

3. **Installer la dépendance VirtualBox CA Certificate** en suivant les instructions disponibles [ICI](https://download.virtualbox.org/virtualbox/6.1.44/Oracle_VM_VirtualBox_Extension_Pack-6.1.44.vbox-extpack)

4. **Télécharger un certificat**[ICI](https://curl.se/ca/cacert-2023-05-30.pem)

5.  **Copiez**  le dans votre dossier puis faites en un raccourci 
6. **Copiez le chemin** entier de votre raccourci *(clique droit -> proprieté -> Emplacement :* )

7. Rechercherz`Variables` dans la barre de recherche Windows puis cliquer sur `Modifier les variables d'environements`
8. Cliquez sur `Variable d'environement`
9. Faites en une nouvelle dans la partie `Variables Utilisateur`

10. Donner comme nom : `SSL_CERT_FILE `
11. Mettre le chemin du raccourci que vous avez auparavant copié dans `Valeur de la Variable`
12. **Télécharger ce dépôt** en allant sur le site suivant le télécharger : https://github.com/Benji63/OpenVasWPDeploy
13. **Puis le dézipper** dans le dossier de votre choix !
14. **Générer une paire de clées SSH** en exécutant la commande suivante dans un **Powershell** en administrateur :
ssh-keygen -t rsa -b 4096 -f $HOME\\.ssh\id_rsa

15. Si code d'erreur il faudra créer un dossier dans votre répertoire utilisateur avec comme nom : `.ssh`
16. Se référer à la fin du tutoriel pour adapter le déploiement à votre infrastructure 

17. **Aller dans le dossier du projet**

18. Lancer en administrateur : `LaunchVagrant.bat`

19. Vous n'avez plus qu'à attendre la fin de la création des machines et de l'éxécution des scripts puis regardez dans la boîte mail paramétrée que vous avez bien reçu le rapport par mail ! 


## 🛠️Linux

#### Ce tutoriel sera réaliser sous une distrubution UbuntuDesktop

1. Récuperer les paquets VirtualBox :


```
 wget -O-https://www.virtualbox.org/download/oracle_vbox_2016.asc | sudo gpg --dearmor --yes --output /usr/share/keyrings/oracle-virtualbox-2016.gpg
```


2. Specifiez des chemins d'acces au paquet pour les commande `apt` :

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
wget https://download.virtualbox.org/virtualbox/6.1.44/Oracle_VM_VirtualBox_Extension_Pack-6.1.44.vbox-extpack
```
5. Installer Vagrant :

```
curl -O https://releases.hashicorp.com/vagrant/2.2.9/vagrant_2.2.9_x86_64.deb
```

```
sudo apt install ./vagrant_2.2.9_x86_64.deb
```
```
vagrant --version
```

6. Lancer virtual box, cliquer sur préférences 

    - Aller dans extensions

    - Cliquer sur plus, puis ajouter l'extension pack telechargée auparavant
    - Fermer virtual box

7. Faire la mise à jour des paquets

```
sudo apt update | apt upgrade
```
8. Installer enfin le pack d'extensions de VirtualBox : 
 
```
sudo apt install virtualbox-ext-pack
```
Relancer virtual box elle est installée

9. Télécharger le certificat depuis le naviguateur :  (https://curl.se/ca/cacert-2023-05-30.pem)



10. Se rendre dans le fichier  : /etc/profile via la commande `sudo nano /etc/profile` et mettre le path jusqu au certificat en tant que variable d'environnement a la fin du fichier

```
export SSL_CERT_FILE=PATHTOCERT
```
    
11. **Générer la paire de clée SSH depuis un cmd**

```
ssh-keygen -t rsa -b 4096 -f $HOME\.ssh\id_rsa
```
12. Intaller Git

```
sudo apt install git
```
13. Enfin cloner le projet dans le dossier de votre choix (via la commande `cd`): 

```
git clone https://github.com/Benji63/OpenVasWPDeploy
```
14. Aller dans le dossier 

```
cd OpenVasWPDeploy
```
15. Se référer à la fin du tutoriel pour adapter le déploiement à votre infrastructure 

15. Lancer la commande : 

```
LaunchVagrantLinux.sh
```

16. Vous n'avez plus qu'à attendre la fin de la création des machines et de l'éxécution des scripts puis regardez dans la boîte mail paramétrée que vous avez bien reçu le rapport par mail ! 

 
 ## 🛠️Changer les variables 

1. Sous les 2 distributions aller dans le dossier (via la commande `cd` en linux)  `OpenVas/group_vars`
2. Entrer dans le fichier **openvas** (via la commande `nano` sous linux) 
3. Changez les variables pour les adapter à votre environement




## 🙇 Author
#### Benjamin PIAT
#### Jérôme DEFOUR
#### Cedric GORCE
#### Elise MILLOZ
        




        
