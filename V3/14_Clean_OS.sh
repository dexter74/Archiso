################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/clean_os;

################################################################################################################################################
# Lancement de la Fonction #
############################
echo "###########################################################";
echo "Démarrage du script de nettoyage Work et ISO              #";
CLEAN_ISO;
CLEAN_WORK;