################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/build/package;

################################################################################################################################################
# Lancement des Fonctions #
###########################
echo "Démarrage du script 02_Build_Package.sh";

if [[ $BUILD_YAY = [yY] ]]; then
  echo "Compilation du package YAY";
yay;
fi

if [[ $BUILD_CALAMARES = [yY] ]]; then
  echo "Compilation du package Calamares";
  calamares;
fi
