
#!/bin/bash
# Directory containing wallpapers
DIR="$HOME/Pictures/Wallpapers"

# Random wallpaper
feh --bg-fill "$(find "$DIR" -type f | shuf -n 1)"
