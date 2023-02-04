################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/compilation;

################################################################################################################################################
# Déclaration des variables d'environnement #
#############################################
date=$(date '+%H:%M')
################################################################################################################################################
# Lancement de la Fonction #
############################
#
###################################################################
echo "###########################################################"
echo "# - Compilation de l'Image Système                        #";
echo "#   > Début de la compilation de l'image à $date          #";
echo "###########################################################"
echo
echo
COMPILATION;
echo
echo
echo "#   > Fin de la compilation de l'image à $date            #";
echo "###########################################################"
###################################################################
