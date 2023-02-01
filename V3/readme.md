#### A. En cours de développement
```
Fonction: Fichier vide
Script  : Charge les fonctions uniquements
```

#### B. Télécharger les scripts 
```bash
rm -rf $HOME/archiso;
git clone https://github.com/dexter74/Archiso.git $HOME/archiso;
cd $HOME/archiso/V3;
```

#### C. Lancements des scripts
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
sh ./10_Profildef.sh;
sh ./11_Skell.sh;
sh ./12_Clean_OS.sh;
sh ./13.Compilation.sh;
sh ./14.Rename.sh;
```

#### X. Dépendances 
```bash
XXX
```
