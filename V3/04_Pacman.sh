################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/pacman;

################################################################################################################################################
# Lancement de la Fonction #
############################
echo "Démarrage du script de l'édition de pacman.";

if [[ $PACMAN = [Yy] ]]; then
  echo "Edition de Pacman.conf";
  PACMAN;
fi
