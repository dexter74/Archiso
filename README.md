----------------------------------------------------------------------------------------------------------------------------------------------------------
<h2><b><p align='center'> .: Création d'une image personnalisée ArchLinux avec Dépôt Local :.</b></h2>

----------------------------------------------------------------------------------------------------------------------------------------------------------
#### A. Présentation
```
Archiso permet de concevoir une image Live personnalisée.
Calamares permet de réaliser une installation via une interface.
```

##### B. Dépendances:
```
ack appstream-qt autoconf automake binutils bison boost cmake extra-cmake-modules fakeroot flex gcc gcc-libs-multilib gcc-multilib git icecream icu kcoreaddons kiconthemes kio kparts kservice kpmcore libtool libpwquality m4 make os-prober patch plasma-framework python python3 python-pip python-qt.py python-yaml pythonqt qt qt5-declarative qt5-location qt5-tools qt5-translations qt5-xmlpatterns qt5-webengine qt5-webkit yaml-cpp 
```

<br />

----------------------------------------------------------------------------------------------------------------------------------------------------------
#### B. Télécharger les sources GIT
```bash
#####################################################################
# Nettoyage de la console #
###########################
clear;
#####################################################################
# Téléchargement du GitHub #
############################
cd;
rm -rf $HOME/archiso;
git clone https://github.com/dexter74/Archiso.git $HOME/archiso 2>/dev/null;
cd $HOME/archiso/V2;

sh package.sh;

sh build.sh;
```
