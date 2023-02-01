#### A. En cours de développement
```
Fonction: Fichier vide
Script  : Charge les fonctions uniquements
```


#### B. Télécharger les scripts 
```bash
clear;
cd;
rm -rf $HOME/archiso;
git clone https://github.com/dexter74/Archiso.git $HOME/archiso 2>/dev/null;
cd $HOME/archiso/V3;
```


#### C. Préparation de l'environnement
```bash
sh ./00_Clean.sh;
sh ./01_Generation.sh;
sh ./02_Build_package.sh;
sh ./03_Build_driver.sh;
sh ./04_Pacman.sh;
sh ./05_List_Package.sh;
sh ./06_Services.sh;
sh ./07_Langue.sh;
sh ./08_Customize.sh;
sh ./09_Utilisateur.sh;
#sh ./10_Profildef.sh;
#sh ./11_Skel.sh;
```


#### D. Nettoyage et Compilation du système 
```bash
sh ./12_Regen_depot.sh;
sh ./13_Clean_OS.sh;
sh ./14_Permission.sh;
sh ./15_Compilation.sh;
sh ./16_Rename.sh;
``` 

#### X. Dépendances
```bash
sudo pacman -Sy --noconfirm ack appstream-qt boost cmake extra-cmake-modules kcoreaddons kiconthemes kio kparts kservice kpmcore plasma-framework;
sudo pacman -Sy --noconfirm python-pip python-qt.py python-yaml qt5-declarative qt5-location qt5-tools qt5-xmlpatterns qt5-webengine yaml-cpp;
     yay    -Sy --noconfirm icecream pythonqt qt;
```
