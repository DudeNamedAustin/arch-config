#!/bin/bash

# xrandr only works in X11 sessions, not Wayland
[ "$XDG_SESSION_TYPE" = x11 ] || exit 0
xrandr --output DisplayPort-1 --mode 2560x1440 --rate 120
xrandr --output HDMI-1-1 --auto --right-of DisplayPort-1
xrandr --output DVI-0 --rotate right
xrandr --output DVI-0 --auto --left-of DisplayPort-1

# exec --no-startup-id set-monitor ~/Documents/Scripts/set-monitor.sh