#!/bin/bash

echo "reloading bspwm colors..."

bspc wm -r

echo "done reloading bspwm"

echo "reloading cava gradient..."

cp "$HOME/.cache/wal/colors-cava" "$HOME/.config/cava/config"

echo "cava gradient reloaded"

echo "reloading spicetify colors..."

cd "$HOME/.config/spicetify/Themes/"

spicetify config current_theme Default
spicetify apply

echo "spicetify theme reloaded"

wallpaper_path=$(cat "$HOME/.cache/wal/wal")

# Generate CSS with wallpaper as background
cat <<EOT > "/home/lonely/.zen/lvglp6ud.Default (alpha)/chrome/userContent.css"
@-moz-document url-prefix(about:home), url-prefix(about:newtab) {
    body {
        background: url('$wallpaper_path') !important;
        background-size: cover !important;
        background-position: center !important;
        background-attachment: fixed !important;
    }
}
EOT

echo "Zen wallpaper reloaded."