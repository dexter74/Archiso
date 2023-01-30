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
clear;
cd;
rm -rf $HOME/script 2>/dev/null;
git clone https://github.com/dexter74/Archiso.git $HOME/script;
rm $HOME/script/README.md 2>/dev/null;
cd  $HOME/script;
```

----------------------------------------------------------------------------------------------------------------------------------------------------------
#### C. Configurer l'environnement
```bash
nano settings.conf;
```

----------------------------------------------------------------------------------------------------------------------------------------------------------
#### D. Constuire les packages
```bash
sh package.sh;
```

Note:
`Compiler à la main pour vérifier si les dépendances sont OK`

----------------------------------------------------------------------------------------------------------------------------------------------------------
#### E. Constuire Archiso
```bash
sh archiso.sh;
```

#### F. Ajouter un Package
```
nano ./package/<packagename>
nano ./fonctions/PACKAGE;
nano ./package.sh;
nano ./settings.conf;
```

