################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/build/driver;

################################################################################################################################################
# Lancement de la Fonction #
############################
echo "###########################################################";
echo "# Démarrage du script de compilation des packages         #";
if [[ $BUILD_DRIVER = [yY] ]]; then
echo "# > Pilotes                                               #";
package_driver_drthrax;
fi
