xbindkeys 
setxkbmap -layout ja,de -variant ,, -option 'grp:alt_shift_toggle'
xwallpaper --stretch $HOME/Images/wallpaper.jpg 
ibus-daemon -rxRd
# does the transparency
xcompmgr & 
xscreensaver --no-splash &
/bin/bash $HOME/.local/share/dwm-bar/dwm_bar.sh &
exec dbus-run-session dwm  
