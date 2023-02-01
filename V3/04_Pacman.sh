################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/pacman;

################################################################################################################################################
# Lancement des Fonctions #
###########################
echo "Démarrage du script de l'édition de pacman.";

if [[ $PACMAN = [Yy] ]]; then
  echo "Edition de Pacman.conf";
  PACMAN;
fi
