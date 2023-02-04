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
if [[ $PACKAGES = [Yy] ]];
then
######################################################################
  echo "# - Edition de Pacman.conf                                #";
  PACMAN;
  ####################################################################
  if [[ $BASE = [Yy] ]]; then
    echo "###########################################################";
    echo "#   > Base                                                #";
    base;
  fi
  ####################################################################
  if [[ $CALAMARES = [Yy] ]]; then
    echo "#   > Calamares                                           #";
    calamares;
  fi
  ####################################################################
  if [[ $ICECREAM = [Yy] ]]; then
    echo "#   > Icecream                                            #";
    icecream;
  fi
  ####################################################################
  if [[ $MICROSOFT_EDGE = [Yy] ]]; then
    echo "#   > Microsft Edge                                       #";
    microsoft_edge;
  fi
  ####################################################################
  if [[ $QT5WEBKIT = [Yy] ]]; then
    echo "#   > QT5-WebKit                                          #";
    qt5webkit;
  fi
  ####################################################################
  if [[ $YAY = [Yy] ]]; then
    echo "#   > Yay                                                 #";
    yay;
  fi
  ####################################################################
  if [[ $PILOTE = [Yy] ]]; then
    echo "#   > Pilote                                              #";
    aic94xx_firmware;
    ast_firmware;
    broadcom_wl;
    linux_firmware_qlogic;
    upd72020x_fwl;
    wd719x_firmware;
  fi
######################################################################
  echo "# - Mise à jour du dépôt Local                            #";
  REGEN_DEPOT;
fi
