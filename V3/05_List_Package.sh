################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/list_package;

################################################################################################################################################
# Lancement des Fonctions #
###########################

if [ $LIST_PACKAGE_1 = [yY] ]]; then
  package_base;
fi


if [ $LIST_PACKAGE_2 = [yY] ]]; then
  package_yay;
fi

if [ $LIST_PACKAGE_2 = [yY] ]]; then
  package_calamares;
fi

if [ $LIST_PACKAGE_4 = [yY] ]]; then
  package_drthrax;
fi


