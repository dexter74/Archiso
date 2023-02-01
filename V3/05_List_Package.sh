################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/list_package;

################################################################################################################################################
# Lancement des Fonctions #
###########################

if [ $LIST_BASE = [yY] ]]; then
  package_base;
fi

if [ $LIST_YAY = [yY] ]]; then
  package_yay;
fi

if [ $LIST_CALAMARES = [yY] ]]; then
  package_calamares;
fi

if [ $LIST_PILOTE = [yY] ]]; then
  package_drthrax;
fi


