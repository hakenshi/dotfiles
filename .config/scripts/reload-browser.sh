#!/bin/bash

# Read wallpaper path
wallpaper_path=$(cat "/home/lonely/.cache/wal/wal")

# Encode wallpaper image to Base64
base64_image=$(base64 -w 0 "$wallpaper_path")

# Detect MIME type of the wallpaper (e.g., image/png or image/jpeg)
mime_type=$(file --mime-type -b "$wallpaper_path")

sudo tee "/var/lib/flatpak/app/io.github.zen_browser.zen/x86_64/stable/b18679656e0c464571b8e8be9e6e3f4ba1aa048ea1cab921f9adab3411be35fd/files/zen/browser/chrome/userContent.css" > /dev/null <<EOT
@-moz-document url-prefix(about:home), url-prefix(about:newtab) {
    body {
        position: relative;
        overflow: hidden;
    }
    body::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: url("data:${mime_type};base64,${base64_image}") !important;
        background-size: cover !important;
        background-position: center !important;
        background-attachment: fixed !important;
        opacity: 0.5; /* Change this value to adjust opacity (0.0 to 1.0) */
        z-index: -1; /* Place the overlay behind the content */
    }
}
EOT



echo "Zen wallpaper reloaded."
