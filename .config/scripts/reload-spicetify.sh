echo "reloading spicetify colors..."

cd "$HOME/.config/spicetify/Themes/"

spicetify config current_theme Default
spicetify apply

echo "spicetify theme reloaded"
