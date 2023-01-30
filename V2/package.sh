####################################################################
# Nettoyage de la console #
###########################
clear;

####################################################################
# Chargement des fonctions #
############################
source ./fonctions/packages/list/experimental;
source ./fonctions/packages/list/stable;
source ./fonctions/packages/generic;
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
  echo "# [Y]  PURGE_ALL    [OK]   #";
else
  echo "# [N]  PURGE_ALL    [OK]   #";
fi
#########################################
if [[ "$PURGE_ISO" = [yY] ]]; then
  PURGE_ISO;
  echo "# [Y]  PURGE_ISO    [OK]   #";
else
  echo "# [N]  PURGE_ISO    [OK]   #";
fi
#########################################
if [[ "$PURGE_PROFIL" = [yY] ]]; then
  PURGE_PROFIL;
  echo "# [Y]  PURGE_PROFIL [OK]   #";
else
  echo "# [N]  PURGE_PROFIL [OK]   #";
fi
#########################################
if [[ "$PURGE_REPO" = [yY] ]]; then
  PURGE_REPO;
  echo "# [Y]  PURGE_REPO   [OK]   #";
else
  echo "# [N]  PURGE_REPO   [OK]   #";
fi
#########################################
if [[ "$PURGE_WORK" = [yY] ]]; then
  PURGE_WORK;
  echo "# [Y]  PURGE_WORK   [OK]   #";
else
  echo "# [N]  PURGE_WORK   [OK]   #";
fi
####################################################################
