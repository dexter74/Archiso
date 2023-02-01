####################################################################
# Nettoyage de la console #
###########################
#clear;

####################################################################
# Chargement des fonctions #
############################
source ./fonctions/packages/list/experimental;
source ./fonctions/packages/experimental;
source ./fonctions/packages/list/stable;
source ./fonctions/packages/driver;
source ./fonctions/packages/stable;
source ./fonctions/experimental;
source ./fonctions/stable;
source ./settings.conf;

####################################################################
# Mise en Forme #
#################
FORM;

####################################################################
# Configuration de la Purge #
#############################
if [[ "$PURGE_ALL" = [yY] ]]; then
  PURGE_ALL;
  echo "# [Y]  PURGE ALL           #";
else
  echo "# [N]  PURGE ALL           #";
fi
#########################################
if [[ "$PURGE_REPO" = [yY] ]]; then
  PURGE_REPO;
  echo "# [Y]  PURGE_REPO          #";
else
  echo "# [N]  PURGE_REPO          #";

fi

####################################################################
# Génération du Dépot #
#######################
if [[ "$GENERATION_DEPOT" = [yY] ]]; then
  GENERATION_DEPOT;
  echo "# [Y]  GENERATION DEPOT    #";
else
  echo "# [N]  GENERATION DEPOT    #";
fi

####################################################################
# Pilote Matériel #
###################
if [[ "$DRIVER" = [yY] ]]; then
  package_driver_drthrax;  
  echo "# [Y]  Compilation Driver  #";
else
  echo "# [N]  Compilation Driver  #";
fi

####################################################################
# Génération des Packages #
###########################
if [[ "$BUILD_PACKAGE" = [yY] ]]; then
  yay;
  calamares;
  DEPOT_REGEN;
  echo "# [Y]  Compilation Package #";
else
  echo "# [N]  Compilation Package #";
fi
