################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/pacman;
source ./fonctions/packages;

################################################################################################################################################
# Lancements des fonctions #
############################
if [[ $PACKAGES = [Yy] ]];
then
  #################################################
  PACMAN;
  #################################################
  if [[ $BASE = [Yy] ]]; then
  base;
  fi
  #################################################
  if [[ $CALAMARES = [Yy] ]]; then
  calamares;
  fi
  #################################################
  if [[ $ICECREAM = [Yy] ]]; then
  icecream;
  fi
  #################################################
  if [[ $MICROSOFT_EDGE = [Yy] ]]; then
  fi
  #################################################
  if [[ $QT5WEBKIT = [Yy] ]]; then
  qt5webkit;
  fi
  #################################################
  if [[ $YAY = [Yy] ]]; then
  yay;
  fi
  #################################################
  if [[ $PILOTE = [Yy] ]]; then
    aic94xx_firmware;
    ast_firmware;
    broadcom_wl;
    linux_firmware_qlogic;
    upd72020x_fwl;
    wd719x_firmware;
  fi
  #################################################
  
fi