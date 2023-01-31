####################################################################
# Chargement des fonctions #
############################
source ./fonctions/packages/list/experimental;
source ./fonctions/packages/list/stable;
source ./fonctions/packages/experimental;
source ./fonctions/packages/stable;
source ./fonctions/experimental;
source ./fonctions/stable;
source ./settings.conf;

####################################################################
# Mise en Forme #
#################
FORM;

####################################################################
# Gestion de la purge #
#######################
if [[ "$PURGE_ISO" = [yY] ]]; then
  PURGE_ISO;
  echo "# [Y]  PURGE ISO           #";
else
  echo "# [N]  PURGE ISO           #";
fi

#########################################
if [[ "$PURGE_WORK" = [yY] ]]; then
  PURGE_WORK;
  echo "# [Y]  PURGE WORK          #";
  FORM;
else
  echo "# [N]  PURGE WORK          #";
  FORM;
fi

####################################################################
# Génération d'ArchISO #
########################
if [[ "$GENERATION_ARCHISO" = [yY] ]]; then
  GENERATION_ARCHISO;
  echo "# [Y]  GENERATION ARCHISO  #";
else
  echo "# [N]  GENERATION ARCHISO  #";
fi

####################################################################
# Edition de Pacman.conf #
##########################
if [[ "$PACMAN" = [yY] ]]; then
  PACMAN;
  echo "# [Y]  Edit PACMAN.conf    #";
else
  echo "# [N]  Edit PACMAN.conf    #";
fi

####################################################################
# Ajout de la liste des Packages #
##################################
if [[ "$PACKAGE" = [yY] ]]; then
  package_base;
  package_yay;
  package_calamares;
  echo "# [Y]  ADD LIST PACKAGE    #";
else
  echo "# [N]  ADD LIST PACKAGE    #";
fi


####################################################################
# Ajout dans la liste les pilotes #
###################################
if [[ "$DRIVER" = [yY] ]]; then
package_drthrax;
  echo "# [Y]  ADD Driver Pacman   #";
else
  echo "# [N]  ADD Driver Pacman   #";
fi

####################################################################
# Configuration de la Langue #
##############################
if [[ "$SERVICES" = [yY] ]]; then
  SERVICES;
  echo "# [Y]  SERVICES            #";
else
  echo "# [N]  SERVICES            #";
fi

####################################################################
# Configuration de la Langue #
##############################
if [[ "$LANGUE" = [yY] ]]; then
  LANGUE;
  echo "# [Y]  LANGUE              #";
else
  echo "# [N]  LANGUE              #";
fi

####################################################################
# Regénérer la langue FR #
##########################
if [[ "$CUSTOMIZE_AIROOTFS" = [yY] ]]; then
  CUSTOMIZE_AIROOTFS;
  echo "# [Y]  CUSTOMIZE AIROOTFS  #";
else
  echo "# [N]  CUSTOMIZE AIROOTFS  #";
fi

####################################################################
# Création de l'utilisateur #
#############################
if [[ "$UTILISATEUR" = [yY] ]]; then
  UTILISATEUR;
  echo "# [Y]  UTILISATEUR         #";
else
  echo "# [N]  UTILISATEUR         #";
fi


####################################################################
# Profil Utilisateur #
######################
if [[ "$SKEL" = [yY] ]]; then
  SKEL;
  echo "# [Y]  SKEL                #";
else
  echo "# [N]  SKEL                #";
fi

####################################################################
# Edtion des permissions #
##########################
if [[ "$PROFILEDEF" = [yY] ]]; then
  PROFILEDEF;
  echo "# [Y]  PROFILEDEF          #";
else
  echo "# [N]  PROFILEDEF          #";
fi

####################################################################
# Compilation d'ArchISO #
#########################
if [[ "$COMPILATION" = [yY] ]]; then
  COMPILATION;
  echo "# [Y]  COMPILATION         #";
else
  echo "# [N]  COMPILATION         #";
fi

####################################################################
# Renommer l'image iso #
########################
if [[ "$RENAME" = [yY] ]]; then
  RENAME;
  echo "# [Y]  RENAME              #";
else
  echo "# [N]  RENAME              #";
fi
