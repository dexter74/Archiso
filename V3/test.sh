######################################################################################################
# Script pour tester toute les étapes #
#######################################
echo "Clean";
sh ./00_Clean.sh;

echo "Generation";
sh ./01_Generation.sh;

echo "Build Package";
sh ./02_Build_package.sh;

echo "Build Driver";
sh ./03_Build_driver.sh;

echo "Pacman";
sh ./04_Pacman.sh;

echo "Ajouter les Package dans la liste";
sh ./05_List_Package.sh;

echo "Services";
sh ./06_Services.sh;

echo "Langue FR";
sh ./07_Langue.sh;

echo "Customize";
sh ./08_Customize.sh;

echo "Création de l'utilisateur";
sh ./09_Utilisateur.sh;

echo "Profile Definition";
sh ./10_Profildef.sh;

echo "Skel";
sh ./11_Skel.sh;

echo "Regénérer le dépôt";
sh ./12_Regen_depot;

echo "Clean OS";
sh ./13_Clean_OS.sh;

echo "Compilation de l'image Système";
sh ./14_Compilation.sh;

echo "Renommage de l'image ISO";
sh ./15_Rename.sh;
