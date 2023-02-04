################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/build/package;
source ./fonctions/build/driver;
source ./fonctions/list_package;
source ./fonctions/pacman;

################################################################################################################################################
# Lancements des fonctions #
############################
if [[ $PACKAGE = [Yy] ]]; then
aic94xx_firmware;
ast_firmware;
broadcom_wl;
linux_firmware_qlogic;
upd72020x_fw;
wd719x_firmware;

package_base;
package_yay;
package_calamares;
package_microsoft;
package_pilote;

PACMAN;
fi
