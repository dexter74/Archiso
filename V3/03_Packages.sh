################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/pacman;
source ./fonctions/packages;
source ./fonctions/regen_depot;

################################################################################################################################################
# Lancements des fonctions #
############################
#
#####################################################################
if [[ $PACKAGES = [Yy] ]]; then
  PACMAN;
  base;
  
  if [[ $INSTALLATEUR = [Yy] ]]; then
    calamares;
    icecream;
    pythonqt;
    qt5webkit;
    PACMAN_DEPOT;
  fi
  
  if [ $BUREAUTIQUE = [Yy] ]]; then
    RC=0;
    #microsoft_edge;
  fi




fi


  
