################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/build/package;

################################################################################################################################################
# Lancement des Fonctions #
###########################
if [[ $BUILD_YAY = [yY] ]]; then
echo "[YAY] Démarrage du script 02_Build_Package.sh"
yay;
fi

if [[ $BUILD_CALAMARES = [yY] ]]; then
echo "[Calamares] Démarrage du script 02_Build_Package.sh" 
  calamares;
fi
