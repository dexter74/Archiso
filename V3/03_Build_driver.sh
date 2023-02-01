################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/build/driver;

################################################################################################################################################
# Lancement de la Fonction #
############################
echo "###########################################################";
echo "# Démarrage du script de compilation pilote               #";

if [[ $BUILD_DRIVER = [yY] ]]; then
  echo "# - Compilation des packages Pilotes                    #";
  package_driver_drthrax;
fi
