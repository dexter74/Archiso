**Observation**
> broadcom-wl: $DIR/profil/airootfs/etc/modprobe.d/broadcom-wl.conf <= A supprimer d'après le contenu du fichier

<br />

#### A. Télécharger les scripts 
```bash
clear;
cd;
rm -rf $HOME/archiso;
git clone https://github.com/dexter74/Archiso.git $HOME/archiso 2>/dev/null;
cd $HOME/archiso/V3;
```

#### B. Configurer Archiso
```bash
nano ./settings.conf;
```

#### C. Génération de l'image Système (Automatique)
```bash
sh test.sh;
```

#### D. Génération de l'image Système (Manuel)
```bash
sh ./00_Update_upgrade.sh;
sh ./01_Clean.sh;
sh ./02_Generation.sh;
sh ./03_Packages.sh;
sh ./04_Services.sh;
sh ./05_Langue.sh;
sh ./06_Customize.sh;
sh ./07_Utilisateur.sh;
sh ./08_Profildef.sh;
sh ./09_Skel.sh;
sh ./10_Regen_depot.sh;
sh ./11_Clean_OS.sh;
sh ./12_Permission.sh;
sh ./13_Compilation.sh;
sh ./14_Rename.sh;
```

#### X. Dépendances
```bash
sudo pacman -Sy --noconfirm ack appstream-qt boost cmake extra-cmake-modules kcoreaddons kiconthemes kio kparts kservice kpmcore plasma-framework;
sudo pacman -Sy --noconfirm python-pip python-qt.py python-yaml qt5-declarative qt5-location qt5-tools qt5-xmlpatterns qt5-webengine yaml-cpp;
     yay    -Sy --noconfirm icecream pythonqt qt;
```
