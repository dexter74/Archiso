------------------------------------------------------------------------------------------------------------------------------------------------------------------
<h2>
  <b>
    <p align='center'> :. Configuration de Calamares :. </p>
  </b>
</h2>

------------------------------------------------------------------------------------------------------------------------------------------------------------------
##### X. Téléchargements de Calamares
```bash
rm -rf $HOME/Documents/calamares;
git clone https://github.com/calamares/calamares.git $HOME/Documents/calamares/;
cd $HOME/Documents/calamares;
```

------------------------------------------------------------------------------------------------------------------------------------------------------------------
#### X. Information
```
Les fichiers *.desc permettent d'avoir des informations sur le module et des dépendances.
```

------------------------------------------------------------------------------------------------------------------------------------------------------------------
##### X. Edition de la configuration Calamares
```bash
mousepad $HOME/Documents/calamares/settings.conf;
mousepad $HOME/Documents/calamares/CMakeLists.txt;
```



------------------------------------------------------------------------------------------------------------------------------------------------------------------
##### X. Configurer BootLoader (Dépendance: partition)
```bash
mousepad $HOME/calamares/src/modules/bootloader/bootloader.conf;
```






