################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/build/package;

################################################################################################################################################
# Lancement des Fonctions #
###########################
echo "###########################################################";
echo "# Démarrage du script de compilation des packages         #";
if [[ $BUILD_CALAMARES = [yY] ]]; then
  echo "# > IceCream                                              #";
  icecream;
  echo "# > Qt5-WebKit                                            #";
  qt5webkit;
  echo "# > PythonQT                                              #";
  pythonqt
  echo "# > Calamares                                             #";
  calamares;
fi

if [[ $BUILD_MICROSOFT_EDGE = [yY] ]]; then
  echo "# > Microsoft-edge                                        #";
  microsoft_edge;
fi

if [[ $BUILD_YAY = [yY] ]]; then
  echo "# > Yay                                                   #";
  yay;
fi
