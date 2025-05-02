#!/bin/sh
# we need to set the wallpaper inside the config file to ensure that it starts at startup.

# start hyprpaper here
hyprpaper &

# shuffle through the wallpapers
WALLPAPER_DIR="$HOME/Pictures/Wallpapers/"
while true; do
    CURRENT_WALLPAPER=$(hyprctl hyprpaper listloaded)
    NEW=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)
    hyprctl hyprpaper reload ,"$NEW"
    sleep 10m
done
