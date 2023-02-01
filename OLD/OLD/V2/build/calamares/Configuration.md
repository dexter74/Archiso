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

<br />

------------------------------------------------------------------------------------------------------------------------------------------------------------------
##### X. Edition de la configuration Calamares
```bash
mousepad $HOME/Documents/calamares/settings.conf;
mousepad $HOME/Documents/calamares/CMakeLists.txt;
```


------------------------------------------------------------------------------------------------------------------------------------------------------------------
##### X.
```bash
mousepad $HOME/Documents/calamares/src/modules/unpackfs/unpackfs.conf;
```

------------------------------------------------------------------------------------------------------------------------------------------------------------------
##### X. Configurer BootLoader
```bash
mousepad $HOME/calamares/src/modules/bootloader/bootloader.conf;
```


|       Modules       |      Dépendance      |
| ------------------- | -------------------- |
| Bootloader          | Partition            |
| Displaymanager      | Aucun                |
| Dracut              | Aucun                |
| Ddummycpp           | Aucun                |
| Dummyprocess        | Aucun                |
| Dummypython         | Aucun                |
| Finished            | ?????                |
| Finishedq           | ?????                |
| FSResizer           | ?????                |
| FStab               | ?????                |
| Grubcfg             | ?????                |
| Initramfscfg        | ?????                |
|                     | ?????                |
|                     | ?????                |
|                     | ?????                |
|                     | ?????                |
|                     | ?????                |
|                     | ?????                |
|                     | ?????                |
|                     | ?????                |



