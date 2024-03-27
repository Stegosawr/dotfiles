xbindkeys 
setxkbmap de 
xwallpaper --stretch $HOME/Images/wallpaper.jpg 
# does the transparency
xcompmgr & 
xscreensaver --no-splash &
/bin/bash $HOME/.local/share/dwm-bar/dwm_bar.sh &
exec dbus-run-session dwm  
