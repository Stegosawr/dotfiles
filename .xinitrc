xbindkeys 
setxkbmap -layout de
xwallpaper --stretch $HOME/Images/wallpaper.jpg 
xrandr --output HDMI-1 --pos 0x0 --output DP-1 --pos 2560x0 --primary
#ibus-daemon -rxRd
# does the transparency
xcompmgr & 
xscreensaver --no-splash &
#/bin/bash $HOME/.local/share/dwm-bar/dwm_bar.sh &
dwmblocks &
#exec dbus-run-session dwm  
exec dwm
