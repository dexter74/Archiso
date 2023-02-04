################################################################################################################################################
# Chargements des fonctions #
#############################
source ./settings.conf;
source ./fonctions/build/package;

################################################################################################################################################
# Lancement des Fonctions #
###########################
echo "###########################################################";
echo "# Démarrage du script de compilation de package           #";

if [[ $BUILD_CALAMARES = [yY] ]]; then
  echo "# - Compilation des packages                              #";
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
  echo "# - Compilation du package Microsoft-edge                 #";
  microsoft_edge;
fi

if [[ $BUILD_YAY = [yY] ]]; then
  echo "# - Compilation du package YAY                            #";
  yay;
fi
