#!/bin/bash

echo "reloading bspwm colors..."

bspc wm -r

echo "done reloading bspwm"

echo "reloading cava gradient..."

cp "$HOME/.cache/wal/colors-cava" "$HOME/.config/cava/config"

echo "cava gradient reloaded"

echo "reloading spicetify colors..."

cd "$HOME/.config/spicetify/Themes/"

spicetify config current_theme Blossom
spicetify apply

echo "spicetify theme reloaded"

echo "reloading discord theme..."
pywal-discord -t default

echo "discord theme reloaded"

echo "exiting"
cd "$OLDPWD"