####################################################################
# Nettoyage de la console #
###########################
clear;

####################################################################
# Chargement des fonctions #
############################
source ./fonctions/packages/list/experimental;
source ./fonctions/packages/list/stable;
source ./fonctions/packages/experimental;
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
  echo "# [Y]  PURGE_ALL           #";
else
  echo "# [N]  PURGE_ALL           #";
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
# Génération des Packages #
###########################
if [[ "$PACKAGE_GENERIC" = [yY] ]]; then
  calamares;
  yay;
  echo "# [Y]  PACKAGE GENERIC     #";
else
  echo "# [N]  PACKAGE GENERIC     #";
fi
