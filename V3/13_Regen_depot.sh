################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/regen_depot;

################################################################################################################################################
# Lancement de la Fonction #
############################
#
###################################################################
echo "# - Regénération de la liste des packages dans le dépôt   #";
REGEN_DEPOT;
###################################################################
