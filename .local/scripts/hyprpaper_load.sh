#!/bin/sh
# we need to set the wallpaper inside the config file to ensure that it starts at startup.

# start hyprpaper here if not already started
if ! pidof -x "hyprpaper" >/dev/null; then 
    echo Starting hyprpaper
    hyprpaper &
else
    echo hyprpaper already started, continuing
fi

# get a new one on boot
WALLPAPER_DIR="$HOME/Pictures/Wallpapers/"
NEW=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)
CMD="hyprctl hyprpaper reload ,'$NEW'"

while ! eval "$CMD"; do
    echo hyprpaper not running yet... wait 1s
    sleep 1
done

echo Done, loaded $NEW
