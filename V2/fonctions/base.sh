###################################################################################################################
# Mise en Forme #
#################
FORM(){
echo "############################";
}

###################################################################################################################
# Installation des Dépendances ArchLinux #
##########################################
DEPENDS_ARCHISO(){
pacman -Sy --noconfirm archiso;
runuser -l $USERNAME -c 'yay -Sy --noconfirm archiso-profiles;'
}

###################################################################################################################
# Génération du dossier Archiso #
#################################
GENERATION(){
mkdir -p $DIR/work $DIR/iso $DIR/profil/airootfs/etc/skel/;
cp -r /usr/share/archiso/configs/$PROFIL/* $DIR/profil;
}

###################################################################################################################
# Configuration de Pacman #
###########################
PACMAN(){
# Prise en charge x86
sed -i "/\[multilib\]/,/Include/"'s/^#//' $DIR/profil/pacman.conf;

# Téléchargement en Parallèle
sed -i -e "s/\ParallelDownloads = 5/ParallelDownloads = 10/g" $DIR/profil/pacman.conf;

# Activation du cache Local
sed -i -e "s/\#CacheDir/CacheDir/g" $DIR/profil/pacman.conf;
# Ajout du Dépôt Local
echo "[Local]
SigLevel = Optional TrustAll
Server = file://$DIR/repo" >> $DIR/profil/pacman.conf;
}

###################################################################################################################
# Configuration de la langue (X11 inclus) #
###########################################
LANGUE(){
mkdir -p                                    $DIR/profil/airootfs/etc/X11/xorg.conf.d/;
cat /etc/locale.conf                      > $DIR/profil/airootfs/etc/locale.conf;
cat /etc/locale.gen                       > $DIR/profil/airootfs/etc/locale.gen;
cat /etc/X11/xorg.conf.d/00-keyboard.conf > $DIR/profil/airootfs/etc/X11/xorg.conf.d/00-keyboard.conf;
}

###################################################################################################################
# Script personnalisé #
#######################
CUSTOMIZE_AIROOTFS(){
echo "locale-gen;
ln -sf /usr/share/zoneinfo/Europe/Paris /etc/localtime;" > $DIR/profil/airootfs/root/customize_airootfs.sh;
echo "~/.automated_script.sh" > $DIR/profil/airootfs/root/.zlogin;
}

###################################################################################################################
# PROFILEDEF #
##############
PROFILEDEF(){
sed -i '/shadow/a \\  ["/etc/gshadow"]="0:0:400"'             $DIR/profil/profiledef.sh;
sed -i '/gshadow/a \\  ["/etc/sudoers"]="0:0:400"'            $DIR/profil/profiledef.sh;
sed -i '/sudoers/a \\  ["/etc/sudoers.d/username"]="0:0:400"' $DIR/profil/profiledef.sh;
}

###################################################################################################################
# Compilation de l'image ISO #
##############################
COMPILATION(){
rm -rf $DIR/{iso,work}/* 2>/dev/null;
mkarchiso -v -w $DIR/work -o $DIR/iso $DIR/profil;
}
