----------------------------------------------------------------------------------------------------------------------------------------------------------
<h2><b><p align='center'> .: Création d'une image personnalisée ArchLinux avec Dépôt Local :.</b></h2>

----------------------------------------------------------------------------------------------------------------------------------------------------------
#### A. Présentation
```
Archiso permet de concevoir une image Live personnalisée.
Se connecter en Root avant toute action.
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
rm -rf $HOME/script 2>/dev/null;
git clone https://github.com/dexter74/Archiso.git $HOME/script;
rm $HOME/script/V1/README.md 2>/dev/null;
cd  $HOME/script/V1/;
sh package.sh;
sh archiso.sh;
```
