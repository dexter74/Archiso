################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/skel;

################################################################################################################################################
# Lancement de la Fonction #
############################
#
#######################################################################
echo "# - [09] Création du profil utilisateur par défaut           #";
SKEL;


#######################################################################
# Expérimental #
################

#######################################################################
echo "#        >  Copie des Fonds d'écran                          #";
SKEL_background;
#######################################################################
echo "#        >  Copie des Icônes                                 #";
SKEL_icon;
#######################################################################
echo "#        >  Copie des Thèmes                                 #";
SKEL_theme;
echo "#        >  Autologin (\$HOME/.dmrc)                          #";
autologin;
#######################################################################
