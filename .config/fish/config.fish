set -gx XKB_DEFAULT_LAYOUT de
set -gx ELECTRON_OZONE_PLATFORM_HINT auto
set -gx ELECTRON_OZONE_PLATFORM wayland
set -gx XDG_CURRENT_DESKTOP sway
set -gx GTK_USE_PORTAL 1
set -gx MOZ_ENABLE_WAYLAND 1

# aliases don't work with wmenu-run -> I created scripts in $PATH
# alias signal-desktop="dbus-run-session signal-desktop"
# alias culture="firefox --private-window"

# Start X at login
#if status is-login
#    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
#        exec startx -- -keeptty
#    end
#end
# Start DWL at login
if status is-login
    if test -z "$WAYLAND_DISPLAY" -a "$XDG_VTNR" = 1
        exec startw -- -keeptty
    end
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end
