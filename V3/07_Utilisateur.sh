################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/utilisateur2;

################################################################################################################################################
# Lancement de la Fonction #
############################
#
###################################################################
echo "###########################################################";
echo "# - Création de l'utilisateur                             #";
utilisateur;
###################################################################
if [[ $BASE = [yY] ]]; then
  echo "#   > Autologin (lightdm)                                 #";
  autologin;
fi
###################################################################
