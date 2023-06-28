@echo off

REM OpenVas Dossier
cd .\OpenVas
echo Lancement de Vagrant dans le dossier...
vagrant up 

REM Connexion SSH à la machine virtuelle
echo Connexion SSH à la machine virtuelle....
vagrant plugin install vagrant-vbguest
vagrant ssh ubuntu_box -c "ssh -o StrictHostKeyChecking=no 127.0.0.1 'echo Connexion SSH réussie !' && exit"
vagrant reload --provision
echo Tous les lancements Vagrant sont terminés.

pause