################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/build/driver;

################################################################################################################################################
# Lancement de la Fonction #
############################
#
###################################################################
echo "# - Compilation des Pilotes                                #";
if [[ $BUILD_DRIVER = [yY] ]]; then
###################################################################
echo "#    > Aic94xx-firmware                                   #";
aic94xx_firmware;
###################################################################
echo "#    > Ast-Firmware                                       #";
ast_firmware;
###################################################################
echo "#    > Broadcom_wl                                        #";
broadcom_wl;
###################################################################
echo "#    > Linux-Firmware-Qlogic                              #";
linux_firmware_qlogic;
###################################################################
echo "#    > upd72020x-fw                                       #";
upd72020x_fw;
###################################################################
echo "#    > WD719x-Firmware                                    #";
wd719x_firmware;
###################################################################
fi