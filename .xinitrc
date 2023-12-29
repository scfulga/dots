#! /bin/sh

# Screenshot
flameshot &

# Restore Wallpaper
nitrogen --restore &

# Slstatus
slstatus &

#WM
exec dwm
