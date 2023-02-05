################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/pacman;
source ./fonctions/packages;

################################################################################################################################################
# Déclarer les variables d'environnements #
###########################################
linux_firmware_qlogic=$(yay -Qi linux-firmware-qlogic | grep "Version" | cut -d ":" -f 2 | cut -c 2-30)
broadcom_wl=$(yay -Qi broadcom-wl | grep "Version" | cut -d ":" -f 2 | cut -c 2-30)

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
    xfce4_panel_profiles;
    PACMAN_DEPOT;
  fi
  ########################################################################
  if [[ $PILOTE = [Yy] ]]; then
    echo "#        > Package Pilotes                                   #";
    aic94xx_firmware;
    ast_firmware;
    linux_firmware_qlogic;
    upd72020x_fw;
    wd719x_firmware;
    ######################################################################
    # Experimental #
    ################
    broadcom_wl;
    ######################################################################
    PACMAN_DEPOT;
  fi
else
    echo "# - [03] Gestion des Packages (OFF)                          #";
fi
##########################################################################
