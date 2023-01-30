####################################################################
# Nettoyage de la console #
###########################
clear;

####################################################################
# Chagement des fichiers #
##########################
source ./settings.conf;
source ./fonctions/FORM;
source ./fonctions/PURGE;
source ./fonctions/DEPOT;
source ./packages/YAY;
source ./packages/CALAMARES;

####################################################################
# Mise en Forme #
#################
FORM;

####################################################################
# Purge de l'environnement #
############################
if [[ "$PURGE" = [yY] ]]; then
  PURGE;
  echo "# [Y]  PURGE        [OK]   #";
else
  echo "# [N]  PURGE        [OK]   #";
fi

####################################################################
# Construction du dépôt de base #
#################################
if [[ "$DEPOT" = [yY] ]]; then
  DEPOT;
  echo "# [Y]  DEPOT        [OK]   #";
else
  echo "# [N]  DEPOT        [OK]   #";
fi

####################################################################
# YAY #
#######
if [[ "$YAY" = [yY] ]]; then
  YAY;
  echo "# [Y]  YAY          [OK]   #";
else
  echo "# [N]  YAY          [OK]   #";
fi

####################################################################
# CALAMARES #
#############
if [[ "$CALAMARES" = [yY] ]]; then
  CALAMARES;
  echo "# [Y]  CALAMARES    [OK]   #";
else
  echo "# [N]  CALAMARES    [OK]   #";
fi

####################################################################
# Génération de l'arborescence #
################################
if [[ "$DEPOT" = [yY] ]]; then
  repo-add $DIR/repo/Local.db.tar.gz $DIR/repo/*.zst 1>/dev/null;
fi

####################################################################
# Mise en Forme #
#################
FORM;

####################################################################
# Patienter #
#############
sleep $PAUSE
