################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/utilisateur;

################################################################################################################################################
# Lancement de la Fonction #
############################
#
########################################################################
echo "##############################################################";
echo "# - [07] Création de l'utilisateur                           #";
utilisateur;
########################################################################
if [[ $PACKAGE = [yY] ]]; then
  echo "#        > Autologin (lightdm)                               #";
  autologin;
fi
########################################################################
