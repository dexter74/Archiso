#################################################################
# Nettoyage de la console #
###########################
clear;

#################################################################
# Fichier de configuration #
############################
source ./settings.conf;

#################################################################
# Chargements des fonctions #
#############################
source ./fonctions/FORM;
source ./fonctions/DEPENDS;
source ./fonctions/GENERATION;
source ./fonctions/PACMAN;
source ./fonctions/PACKAGE;
source ./fonctions/SERVICES;
source ./fonctions/UTILISATEUR;
source ./fonctions/PROFILEDEF;
source ./fonctions/LANGUE;
source ./fonctions/CUSTOMIZE_AIROOTFS;
source ./fonctions/SKEL;
source ./fonctions/COMPILATION;
source ./fonctions/RENAME;
source ./fonctions/TEST;

#################################################################
# Mise en Forme #
#################
FORM;

#################################################################
# Dépendance Archiso #
######################
if [ -f "/usr/bin/mkarchiso" ];
then 
  DEPENDS;
else
  RC=0;
fi 

#################################################################
# Génération de l'environnement #
#################################
if [[ "$GENERATION" = [yY] ]];
then
  GENERATION;
  echo "# [Y]  GENERATION   [OK]   #";
else
  echo "# [N]  GENERATION   [OK]   #";
fi

#################################################################
# Edition de Pacman #
#####################
if [[ "$PACMAN" = [yY] ]];
then
  PACMAN;
  echo "# [Y]  PACMAN       [OK]   #";
else
  echo "# [N]  PACMAN       [OK]   #";
fi

#################################################################
# packages.x86_64 #
###################
if [[ "$PACKAGE" = [yY] ]];
then
  PACKAGE;
  echo "# [Y]  PACKAGE      [OK]   #";
else
  echo "# [N]  PACKAGE      [OK]   #";
fi

#################################################################
# Gestion des services Systemd #
################################
if [[ "$SERVICES" = [yY] ]];
then
   SERVICES;
  echo "# [Y]  SERVICES     [OK]   #";
else
  echo "# [N]  SERVICES     [OK]   #";
fi

#################################################################
# Création de l'utilisateur #
#############################
if [[ "$UTILISATEUR" = [yY] ]];
then
  UTILISATEUR;
  echo "# [Y]  UTILISATEUR  [OK]   #";
else
  echo "# [N]  UTILISATEUR  [OK]   #";
fi

#################################################################
# PROFILEDEF #
##############
if [[ "$PROFILEDEF" = [yY] ]];
then
  PROFILEDEF;
  echo "# [Y]  PROFILEDEF   [OK]   #";
else
  echo "# [N]  PROFILEDEF   [OK]   #";
fi

#################################################################
# Langue #
##########
if [[ "$LANGUE" = [yY] ]];
then
  LANGUE;
  echo "# [Y]  LANGUE       [OK]   #";
else
  echo "# [N]  LANGUE       [OK]   #";
fi

#################################################################
# CUSTOMIZE_AIROOTFS #
######################
if [[ "$CUSTOMIZE_AIROOTFS" = [yY] ]];
then
  CUSTOMIZE_AIROOTFS;
  echo "# [Y]  CUSTOMIZE    [OK]   #";
else
  echo "# [N]  CUSTOMIZE    [OK]   #";
fi

#################################################################
# Profil Utilisateur #
######################
if [[ "$SKEL" = [yY] ]];
then
  SKEL;
  echo "# [Y]  SKEL         [OK]   #";
else
  echo "# [N]  SKEL         [OK]   #";
fi

#################################################################
# COMPILATION #
###############
if [[ "$COMPILATION" = [yY] ]];
then
  COMPILATION;
  echo "# [Y]  COMPILATION  [OK]   #";
else
  echo "# [N]  COMPILATION  [OK]   #";
fi

#################################################################
# Normaliser nom de l'ISO #
###########################
if [[ "$RENAME" = [yY] ]];
then
  RENAME;
  echo "# [Y]  RENOMMAGE    [OK]   #";
else
  echo "# [N]  RENOMMAGE    [OK]   #";
fi

#################################################################
# Tester l'ISO #
################
if [[ "$TEST" = [yY] ]];
then
  TEST;
  echo "# [Y]  TEST ISO     [OK]   #";
else
  echo "# [N]  TEST ISO     [OK]   #";
fi

#################################################################
# Mise en Forme #
#################
FORM;

####################################################################
# Patienter #
#############
sleep $PAUSE
