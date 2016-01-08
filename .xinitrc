#synclient TapButton1=1
#synclient TapButton2=2
#synclient TapButton3=3
ulimit -c unlimited
rofi -key-window F12 -key-run F2 &
#sudo mount /dev/sdb2 /mnt/VMs
#sudo mount -t ntfs-3g -o umask=000 /dev/sdb4 /mnt/files
xinput list|grep G15 > /dev/null
if [ $? -ne 0 ]; then
  echo "No G15 detected setting keyboard language to latam"
  setxkbmap latam -option caps:escape
else
  echo "G15 detected setting keyboard language to us"
  setxkbmap us -option caps:escape
fi
# get the mouse id from xinput list
# 3 2 1 inverts mouse buttons
xinput set-button-map 16 3 2 1
xinput set-button-map 17 3 2 1
xrandr --output VGA1 --auto --output LVDS1 --auto --right-of VGA1
~/./xflux -z 45070
i3
