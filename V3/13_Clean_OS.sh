################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/clean_os;

################################################################################################################################################
# Lancement de la Fonction #
############################
echo "Démarrage du script de nettoyage du Système d'exploitation. (Work, ISO)";
CLEAN_ISO;
CLEAN_WORK;
