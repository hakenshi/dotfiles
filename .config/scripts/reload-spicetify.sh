echo "reloading spicetify colors..."

if [ -f "$HOME/.cache/wal/color.ini" ]; then
    cp "$HOME/.cache/wal/color.ini" "$HOME/.config/spicetify/Themes/Default/color.ini"
    spicetify config current_theme Default
    spicetify apply
    echo "spicetify theme reloaded"
else
    echo "Error: color.ini not found in ~/.cache/wal"
fi
