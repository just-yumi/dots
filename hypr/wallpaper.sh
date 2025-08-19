#!/bin/bash

file=$(zenity --file-selection --title="Вибери шпалери" )

if [ -z "$file" ]; then
    echo "❌ Нічого не вибрано."
    exit 1
fi

matugen image "$file" -m 'dark'
hyprctl hyprpaper preload "$file"
hyprctl hyprpaper wallpaper ",$file"

