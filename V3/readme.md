#### A. Télécharger les scripts 
```bash
clear;
cd;
rm -rf $HOME/archiso;
git clone https://github.com/dexter74/Archiso.git $HOME/archiso 2>/dev/null;
cd $HOME/archiso/V3;
```

#### B. Génération de l'image Système (Test)
```bash
sh test.sh;
```

#### D. Génération de l'image Système (Manuel)
```bash
sh ./00_Update_upgrade.sh;
sh ./01_Clean.sh;
sh ./02_Generation.sh;
sh ./03_Build_package.sh;
sh ./04_Build_driver.sh;
sh ./05_Pacman.sh;
sh ./06_List_Package.sh;
sh ./07_Services.sh;
sh ./08_Langue.sh;
sh ./09_Customize.sh;
sh ./10_Utilisateur.sh;
sh ./11_Profildef.sh;
sh ./12_Skel.sh;
sh ./13_Regen_depot.sh;
sh ./14_Clean_OS.sh;
sh ./15_Permission.sh;
sh ./16_Compilation.sh;
sh ./17_Rename.sh;
```

#### X. Dépendances
```bash
sudo pacman -Sy --noconfirm ack appstream-qt boost cmake extra-cmake-modules kcoreaddons kiconthemes kio kparts kservice kpmcore plasma-framework;
sudo pacman -Sy --noconfirm python-pip python-qt.py python-yaml qt5-declarative qt5-location qt5-tools qt5-xmlpatterns qt5-webengine yaml-cpp;
     yay    -Sy --noconfirm icecream pythonqt qt;
```
