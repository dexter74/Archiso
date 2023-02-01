######################################################################################################
# Script pour tester toute les étapes #
#######################################

sh ./00_Clean.sh;

sh ./01_Generation.sh;

sh ./02_Build_package.sh;

sh ./03_Build_driver.sh;

sh ./04_Pacman.sh;

sh ./05_List_Package.sh;

sh ./06_Services.sh;

sh ./07_Langue.sh;

sh ./08_Customize.sh;

sh ./09_Utilisateur.sh;

sh ./10_Profildef.sh;

sh ./11_Skel.sh;

sh ./12_Regen_depot.sh;

sh ./13_Clean_OS.sh;

sh ./14_Permission.sh;

sh ./15_Compilation.sh;

sh ./16_Rename.sh;
