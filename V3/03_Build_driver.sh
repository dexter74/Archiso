################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/build/driver;

################################################################################################################################################
# Lancement des Fonctions #
###########################
echo "Démarrage du script 03_Build_Driver.sh"

if [[ $BUILD_DRIVER = [yY] ]]; then
  echo "Construction des packages Pilotes"
  package_driver_drthrax;
fi
