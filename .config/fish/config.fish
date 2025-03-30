set -gx XKB_DEFAULT_LAYOUT de
set -gx ELECTRON_OZONE_PLATFORM_HINT auto
set -gx ELECTRON_OZONE_PLATFORM wayland
set -gx GTK_USE_PORTAL 1

alias signal-desktop="dbus-run-session signal-desktop"

# Start X at login
#if status is-login
#    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
#        exec startx -- -keeptty
#    end
#end

if status is-interactive
    # Commands to run in interactive sessions can go here
end

