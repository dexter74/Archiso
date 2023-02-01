#### A. Calamares ([GUIDE](https://habr.com/en/post/654755/))
```
########################################################################################################################################################################################
# Déclaration des variables environnement #
###########################################
TAR=https://github.com/calamares/calamares/releases/download/v3.2.61/calamares-3.2.61.tar.gz
GIT=https://github.com/calamares/calamares.git
DIR=$HOME/Packages
DEP_GENERIC="appstream-qt autoconf automake bison cmake extra-cmake-modules fakeroot flex gcc git icu kcoreaddons kpmcore libtool m4 make plasma-framework python python3 python-pip python-qt.py python-yaml qt qt5-declarative qt5-location qt5-translations qt5-xmlpatterns"
DEP_YAY="ack binutils boost fakeroot gcc-multilib gcc-libs-multilib icecream kiconthemes kio kparts kservice patch pythonqt qt5-tools qt5-webengine yaml-cpp"
LOG="$HOME/Calamares.log"
CPU=$(lscpu  | grep "Processeur(s)" | cut -c 42-44)


########################################################################################################################################################################################
# Nettoyage de la console #
###########################
clear;

########################################################################################################################################################################################
# Dépendances #
###############
sudo pacman -Sy  --noconfirm $DEP_GENERIC 1>/dev/null 2>/dev/null;
sudo pacman -Syu --noconfirm $DEP_YAY     1>/dev/null 2>/dev/null; 
#yay         -Sy  --noconfirm $DEP_YAY     1>/dev/null 2>/dev/null; 
#yay         -Syu --noconfirm  1>/dev/null 1>/dev/null 2>/dev/null; 
#pip install pyyaml jsonschema

########################################################################################################################################################################################
# Nettoyage Dossier #
#####################
rm -rf $DIR 2>/dev/null;

########################################################################################################################################################################################
# Téléchargement des sources #
##############################
git clone $GIT $DIR;

########################################################################################################################################################################################
# Création du dossier Build #
#############################
mkdir $DIR/build;

########################################################################################################################################################################################
# Construction #
################
cd $DIR/build;
sed -i -e 's/CALAMARES_RELEASE_MODE OFF/CALAMARES_RELEASE_MODE ON/g' $DIR/CMakeLists.txt;
cp $DIR/settings.conf $DIR/build; 
cmake -DCMAKE_BUILD_TYPE=Debug ..;

make -j $CPU;
```
