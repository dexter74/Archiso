################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/skel;

################################################################################################################################################
# Lancement de la Fonction #
############################
#
###################################################################
echo "# - Création du profil utilisateur par défaut             #";
SKEL;
###################################################################
echo "#  >  Copie des Fonds d'écran                             #";
SKEL_background;
###################################################################
echo "#  >  Copie des Icônes                                    #";
SKEL_icon;
###################################################################
echo "#  >  Copie des Thèmes                                    #";
SKEL_theme;
###################################################################
