################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/pacman;
source ./fonctions/build/packages;

################################################################################################################################################
# Lancements des fonctions #
############################
if [[ $PACKAGES = [Yy] ]];
then
  #################################################
  PACMAN;
  #################################################
  if [[ $base = [Yy] ]]; then
  base;
  fi
  #################################################
  if [[ $calamares = [Yy] ]]; then
  calamares;
  fi
  #################################################
  if [[ $icecream = [Yy] ]]; then
  icecream;
  fi
  #################################################
  if [[ $microsoft_edge = [Yy] ]]; then
  fi
  #################################################
  if [[ $qt5webkit = [Yy] ]]; then
  qt5webkit;
  fi
  #################################################
  if [[ $yay = [Yy] ]]; then
  yay;
  fi
  #################################################
  if [[ $pilote = [Yy] ]]; then
    aic94xx_firmware;
    ast_firmware;
    broadcom_wl;
    linux_firmware_qlogic;
    upd72020x_fwl;
    wd719x_firmware;    
  fi
  #################################################
  
fi
