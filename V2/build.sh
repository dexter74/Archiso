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
# Gestion de la purge #
#######################
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
if [[ "$PURGE_WORK" = [yY] ]]; then
  PURGE_WORK;
  echo "# [Y]  PURGE_WORK          #";
  FORM;
else
  echo "# [N]  PURGE_WORK          #";
  FORM;
fi

####################################################################
# Génération d'ArchISO #
########################
if [[ "$GENERATION_ARCHISO" = [yY] ]]; then
  GENERATION_ARCHISO;
  echo "# [Y]  GENERATION ARCHISO  #";
else
  echo "# [N]  GENERATION ARCHISO  #";
fi

####################################################################
if [[ "$PACMAN" = [yY] ]]; then
  PACMAN;
  echo "# [Y]  PACMAN              #";
else
  echo "# [N]  PACMAN              #";
fi
