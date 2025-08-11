#!/bin/bash

# Get list of active players
players=$(playerctl -l 2>/dev/null)

# Prioritize VLC, else pick first player
if echo "$players" | grep -q vlc; then
    player="vlc"
else
    player=$(echo "$players" | head -n 1)
fi

# If no players, show nothing
if [ -z "$player" ]; then
    echo ""
    exit
fi

# Get status
status=$(playerctl -p "$player" status 2>/dev/null)

# App name (capitalized)
app_name=$(echo "$player" | awk '{print toupper(substr($0,1,1)) tolower(substr($0,2))}')

# Choose icon based on status
if [ "$status" = "Playing" ]; then
    icon=""  # pause icon
elif [ "$status" = "Paused" ]; then
    icon=""  # play icon
else
    icon=""  # stop icon
fi

# Output app name + icon
echo "$app_name $icon"

