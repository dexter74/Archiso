################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/utilisateur;

################################################################################################################################################
# Lancement de la Fonction #
############################
#
###################################################################
echo "# - Création de l'utilisateur                             #";
utilisateur;
###################################################################
echo "#   > Autologin (lightdm)                                 #";
autologin;
###################################################################
