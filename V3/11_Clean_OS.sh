################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/clean_os;

################################################################################################################################################
# Lancement de la Fonction #
############################
#
######################################################################
echo "# - [11] Nettoyage des données dans les dossiers work et iso  #";
CLEAN_ISO;
CLEAN_WORK;
######################################################################
