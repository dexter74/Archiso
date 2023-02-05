######################################################################################################
# Script pour tester toute les étapes manuellements #
#####################################################
sh ./00_Update_upgrade.sh;
sh ./01_Clean.sh;
sh ./02_Generation.sh;
sh ./03_Packages.sh;
sh ./04_Services.sh;
sh ./05_Langue.sh;
sh ./06_Customize.sh;
sh ./07_Utilisateur.sh;
sh ./08_Profildef.sh;
sh ./09_Skel.sh;
#sh ./10_Regen_depot.sh;
sh ./11_Clean_OS.sh;
sh ./12_Permission.sh;
sh ./13_Compilation.sh;
sh ./14_Rename.sh;
