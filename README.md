----------------------------------------------------------------------------------------------------------------------------------------------------------
<h2><b><p align='center'> .: Création d'une image personnalisée ArchLinux avec Dépôt Local :.</b></h2>

----------------------------------------------------------------------------------------------------------------------------------------------------------
#### A. Présentation
```
Archiso permet de concevoir une image Live personnalisée.
Calamares permet de réaliser une installation via une interface.
```

<br />

----------------------------------------------------------------------------------------------------------------------------------------------------------
#### B. Télécharger les sources GIT
```bash
clear;
cd;
rm -rf $HOME/archiso;
git clone https://github.com/dexter74/Archiso.git $HOME/archiso 2>/dev/null;
cd $HOME/archiso/V3;
sh test.sh
```

> Dans la Version 2, il existe une liste de dépendances.
