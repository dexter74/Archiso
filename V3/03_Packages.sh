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
if [[ $PACKAGES = [Yy] ]];
then
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
    microsoft_edge;
    PACMAN_DEPOT;
  fi
  
  if [ $OUTILS = [Yy] ]]; then
    yay;
    PACMAN_DEPOT;
  fi
  
  if [ $PILOTE = [Yy] ]]; then
    aic94xx_firmware;
    ast_firmware;
    broadcom_wl;
    linux_firmware_qlogic;
    upd72020x_fw;
    wd719x_firmware;
    PACMAN_DEPOT;
  fi
  
  

fi


  
