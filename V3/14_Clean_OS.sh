################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/clean_os;

################################################################################################################################################
# Lancement de la Fonction #
############################
#
###################################################################
echo "# - Script de nettoyage des dossiers work et iso          #";
CLEAN_ISO;
CLEAN_WORK;
###################################################################
