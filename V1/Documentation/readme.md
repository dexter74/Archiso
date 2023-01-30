#### A. Multithread Make:
```
sed -i -e 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j$(nproc)"/' /etc/makepkg.conf
sed -i -e 's/MAKEFLAGS="-j$(nproc)/#MAKEFLAGS="-j2""/' /etc/makepkg.conf
sudo nano /etc/makepkg.conf


#MAKEFLAGS="-j2"
MAKEFLAGS="-j$(nproc)"
```
