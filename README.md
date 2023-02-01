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
yay -Sy --noconfirm icecream pythonqt qt qt5-webkit;
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
