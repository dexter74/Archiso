################################################################################################################################################
# Nettoyage de la console #
###########################
clear;

################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/clean;

################################################################################################################################################
# Lancement de la Fonction #
############################

echo "###########################################################";
echo "# Démarrage du script de Nettoyage                        #";
echo "# - Purge du dossier Racine Archiso                       #";
CLEAN;
