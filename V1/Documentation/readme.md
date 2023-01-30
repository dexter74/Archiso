#### A. Multithread Make:
```
clear;
sudo sed -i -e 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j$(nproc)"/' /etc/makepkg.conf;grep "^MAKEFLAGS" /etc/makepkg.conf
sudo sed -i -e 's/MAKEFLAGS="-j$(nproc)"/#MAKEFLAGS="-j2"/' /etc/makepkg.conf;grep "#MAKEFLAGS" /etc/makepkg.conf
sudo nano /etc/makepkg.conf


#MAKEFLAGS="-j2"
MAKEFLAGS="-j$(nproc)"
```
