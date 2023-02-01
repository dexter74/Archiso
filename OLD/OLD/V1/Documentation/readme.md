#### A. Compilatation MultiThread pour Make
###### Multi-Thread ON
```
clear;
sudo sed -i -e 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j$(nproc)"/' /etc/makepkg.conf;
grep "^MAKEFLAGS" /etc/makepkg.conf;
```

###### Multi-Thread OFF
```
clear;
sudo sed -i -e 's/MAKEFLAGS="-j$(nproc)"/#MAKEFLAGS="-j2"/' /etc/makepkg.conf;
grep "#MAKEFLAGS" /etc/makepkg.conf
```
