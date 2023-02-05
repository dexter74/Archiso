################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/pacman;
source ./fonctions/packages;

################################################################################################################################################
# Lancements des fonctions #
############################
#
##########################################################################
if [[ $PACKAGES = [Yy] ]]; then
    echo "##############################################################";
    echo "# - [03] Gestion des Packages                                #";
    echo "#        > Edition de Pacman.conf                            #";
    PACMAN_CONF;
    echo "#        > Package de base (Lightdm + XFCE4)                 #";
    base;
  ########################################################################
  if [[ $INSTALLATEUR = [Yy] ]]; then
    echo "#        > Calamares                                         #";
    calamares;
    echo "#        > IceCream                                          #";
    icecream;
    echo "#        > Python-QT                                         #";
    pythonqt;
    echo "#        > QT5-Webkit                                        #";
    qt5webkit;
    PACMAN_DEPOT;
  fi
  ########################################################################
  if [[ $BUREAUTIQUE = [Yy] ]]; then
    echo "#        > Package Bureautique                               #";
    microsoft_edge;
    PACMAN_DEPOT;
  fi
  ########################################################################
  if [[ $OUTILS = [Yy] ]]; then
    echo "#        > Package Outils                                    #";
    yay;
    PACMAN_DEPOT;
  fi
  ########################################################################
  if [[ $PILOTE = [Yy] ]]; then
    echo "#        > Package Pilotes                                   #";
    aic94xx_firmware;
    ast_firmware;
    #broadcom_wl;
    linux_firmware_qlogic;
    upd72020x_fw;
    wd719x_firmware;
    PACMAN_DEPOT;
  fi
else
    echo "# - [03] Gestion des Packages (OFF)                          #";
fi
##########################################################################
