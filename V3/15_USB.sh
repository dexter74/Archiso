################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/usb;

################################################################################################################################################
# Déclarer les variables d'environnements #
###########################################
VENTOY=/run/media/$USERNAME/Ventoy/ISO/Linux/ArchLinux

################################################################################################################################################
# Lancement de la Fonction #
############################
#
######################################################################
echo "# - [15] Déplacer de l'image ISO dans la clé USB Ventoy      #";
USB_VENTOY;
echo "##############################################################";
