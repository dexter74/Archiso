################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/build/driver;

################################################################################################################################################
# Lancement de la Fonction #
############################
echo "###########################################################";
echo "# Démarrage du script de compilation des Pilotes:         #";
if [[ $BUILD_DRIVER = [yY] ]]; then
###################################################################
echo "# > broadcom_wl                                           #";
broadcom_wl > $DIR/repo/log/broadcom_wl.log;
###################################################################
echo "# > Aic94xx-firmware                                      #";
aic94xx_firmware > $DIR/repo/log/aic94xx_firmware.log;
###################################################################
echo "# > Ast-Firmware                                          #";
ast_firmware > $DIR/repo/log/Ast-firmware.log;
###################################################################
echo "# > Linux-Firmware-Qlogic                                 #";
linux_firmware_qlogic > $DIR/repo/log/Linux-Firmware-Qlogic.log;
###################################################################
echo "# > upd72020x-fw                                          #";
upd72020x_fw > $DIR/repo/log/upd72020x-fw.log;
###################################################################
echo "# > WD719x-Firmware                                       #";
wd719x_firmware > $DIR/repo/log/wd719x-firmware.log;
###################################################################
fi
