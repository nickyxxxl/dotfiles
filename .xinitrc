/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/wireplumber &
(sleep 1 && xrandr -s 1280x1024 && discord-development ) &
xrdb ~/.Xresources &
exec dwm
