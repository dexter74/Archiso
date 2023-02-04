######################################################################################################
# Script pour tester toute les étapes manuellements #
#####################################################
sh ./00_Update_upgrade.sh;
sh ./01_Clean.sh;
sh ./02_Generation.sh;
sh ./03_Build_package.sh;
sh ./04_Build_driver.sh;
sh ./05_Pacman.sh;
sh ./06_List_Package.sh;
sh ./07_Services.sh;
sh ./08_Langue.sh;
sh ./09_Customize.sh;
sh ./10_Utilisateur.sh;
sh ./11_Profildef.sh;
sh ./12_Skel.sh;
sh ./13_Regen_depot.sh;
sh ./14_Clean_OS.sh;
sh ./15_Permission.sh;
sh ./16_Compilation.sh;
sh ./17_Rename.sh;
