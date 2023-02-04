######################################################################################################
# Script pour tester toute les étapes manuellements #
#####################################################
sh ./00_Update_upgrade.sh;
sh ./01_Clean.sh;
sh ./02_Generation.sh;
sh ./03_Packages.sh;
sh ./04_services.sh;
