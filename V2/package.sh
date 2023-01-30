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
  echo "# [Y]  PURGE_ALL           #";
else
  echo "# [N]  PURGE_ALL           #";
fi
#########################################
if [[ "$PURGE_ISO" = [yY] ]]; then
  PURGE_ISO;
  echo "# [Y]  PURGE_ISO           #";
else
  echo "# [N]  PURGE_ISO           #";
fi
#########################################
if [[ "$PURGE_PROFIL" = [yY] ]]; then
  PURGE_PROFIL;
  echo "# [Y]  PURGE_PROFIL        #";
else
  echo "# [N]  PURGE_PROFIL        #";
fi
#########################################
if [[ "$PURGE_REPO" = [yY] ]]; then
  PURGE_REPO;
  echo "# [Y]  PURGE_REPO          #";
else
  echo "# [N]  PURGE_REPO          #";

fi
#########################################
if [[ "$PURGE_WORK" = [yY] ]]; then
  PURGE_WORK;
  echo "# [Y]  PURGE_WORK          #";
  FORM;
else
  echo "# [N]  PURGE_WORK          #";
  FORM;
fi

####################################################################
# Génération du Dépot #
#######################
if [[ "$GENERATION_DEPOT" = [yY] ]]; then
  GENERATION_ARCHISO;
  echo "# [Y]  GENERATION DEPOT    #";
else
  echo "# [N]  GENERATION DEPOT    #";
fi

####################################################################
if [[ "$GENERATION_ARCHISO" = [yY] ]]; then
  GENERATION_ARCHISO;
  echo "# [Y]  GENERATION ARCHISO  #";
else
  echo "# [N]  GENERATION ARCHISO  #";
fi
