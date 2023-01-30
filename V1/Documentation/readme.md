#### A. Multithread Make:
```
sed -i -e 's/#MAKEFLAGS="-j2"/MAKEFLAGS="-j$(nproc)"/' /etc/makepkg.conf
#MAKEFLAGS="-j2"
MAKEFLAGS="-j$(nproc)"
```
