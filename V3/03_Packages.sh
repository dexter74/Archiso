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
  echo "# - Edition du fichier Pacman.conf dans Archiso           #";
  PACMAN;
  ####################################################################
  if [[ $BASE = [Yy] ]]; then
    echo "###########################################################";
    echo "# - Ajout de package dans l'image Archiso                 #";
    sleep 1;
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
  if [[ $QT5WEBKIT = [Yy] ]]; then
    echo "#   > QT5-WebKit                                          #";
    qt5webkit;
  fi
  ####################################################################
  if [[ $MICROSOFT_EDGE = [Yy] ]]; then
    echo "#   > Microsft Edge                                       #";
    microsoft_edge;
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
    linux_firmware_qlogic;
    upd72020x_fwl;
    wd719x_firmware;
  fi
  ####################################################################
  if [[ $BROADCOM = [Yy] ]]; then
    echo "#   > Pilote WIFI (broadcom-wl)                          #";
    broadcom_wl;
  fi
    
  
  
######################################################################
  echo "###########################################################";
  echo "# - Mise à jour du dépôt Local                            #";
  REGEN_DEPOT;
fi
