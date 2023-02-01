################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/list_package;

################################################################################################################################################
# Lancement des Fonctions #
###########################
echo "Démarrage du script 05_Package_Base.sh";

if [[ $LIST_BASE = [yY] ]]; then
  echo "Les packages de bases ont étés ajoutées";
  package_base;
fi

if [[ $LIST_YAY = [yY] ]]; then
  echo "Le Package YAY a été ajouté";
  package_yay;
fi

if [[ $LIST_CALAMARES = [yY] ]]; then
  echo "Le Package Calamares a été ajouté";
  package_calamares;
fi

if [[ $LIST_PILOTE = [yY] ]]; then
  echo "Le Package Pilote Drthrax a été ajouté";
  package_drthrax;
fi


