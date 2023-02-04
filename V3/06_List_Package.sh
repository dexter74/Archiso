################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/list_package;

################################################################################################################################################
# Lancement des Fonctions #
###########################
echo "# - Script d'ajout de la liste des packages               #";

if [[ $LIST_BASE = [yY] ]]; then
echo "#    > Base à été ajouté dans la liste                    #";
package_base;
fi

if [[ $LIST_YAY = [yY] ]]; then
echo "#    > YAY à été ajouté dans la liste                     #";
package_yay;
fi

if [[ $LIST_CALAMARES = [yY] ]]; then
echo "#    > Calamares à été ajouté dans la liste               #";
package_calamares;
fi

if [[ $LIST_MICROSOFT_EDGE = [yY] ]]; then
echo "#    > Microsoft Edge à été ajouté dans la liste          #";
package_microsoft;
fi

if [[ $LIST_PILOTE = [yY] ]]; then
echo "#    > Pilotes ont été ajoutés dans la liste              #";
package_drthrax;
fi
