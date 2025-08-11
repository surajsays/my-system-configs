#!/bin/bash

# Folder where wallpapers are stored
DIR="$HOME/Pictures/Wallpapers"

# Predefined list of wallpapers
WALLPAPERS=(
dark_forest.png
debian.png
train_and_lake.png
field.jpeg
lofi-cafe_gray.jpg
wallhaven-lmxwdl.jpg
chill.gif
shougan_castle.png
seashore.jpg
gruvbox_forest-4.png
interstellar_wallpaper.png
circuits.png
nordic.png
clouds.jpg
pixelart_forest.jpg
)

# Show list in rofi
SELECTED=$(printf "%s\n" "${WALLPAPERS[@]}" | rofi -dmenu -i -p "Select wallpaper:")

# Apply selected wallpaper
if [ -n "$SELECTED" ]; then
    feh --bg-fill "$DIR/$SELECTED"
fi
