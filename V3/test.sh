clear;
cd;
rm -rf $HOME/archiso;
git clone https://github.com/dexter74/Archiso.git $HOME/archiso 2>/dev/null;
cd $HOME/archiso/V3;
sleep 5

echo "Clean";
sh ./00_Clean.sh;
sleep 5
echo "Generation";
sh ./01_Generation.sh;
sleep 5
echo "Build Package";
sh ./02_Build_package.sh;
sleep 5
echo "Build Driver";
sh ./03_Build_driver.sh;
sleep 5
echo "Pacman";
sh ./04_Pacman.sh;
sleep 5
echo "Ajouter les Package dans la liste";
sh ./05_List_Package.sh;
sleep 5
echo "Services";
sh ./06_Services.sh;
sleep 5
echo "Langue FR";
sh ./07_Langue.sh;
sleep 5
echo "Customize";
sh ./08_Customize.sh;
sleep 5
echo "Création de l'utilisateur";
sh ./09_Utilisateur.sh;
sleep 5
echo "Profile Definition";
sh ./10_Profildef.sh;
sleep 5
echo "Skel";
sh ./11_Skel.sh;
sleep 5
echo "Regénérer le dépôt";
sh ./12_Regen_depot;
sleep 5
echo "Clean OS";
sh ./13_Clean_OS.sh;
sleep 5
echo "Compilation de l'image Système";
sh ./14_Compilation.sh;
sleep 5
echo "Renommage de l'image ISO";
sh ./15_Rename.sh;
