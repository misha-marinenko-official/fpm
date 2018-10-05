#!/usr/local/bin/fish
switch (uname)
case Linux
    echo Hi Tux! Welcome to FPM installer!
case Darwin
    echo Hi Hexley! Welcome to FPM installer!
case FreeBSD NetBSD DragonFly
    echo Hi Beastie! Welcome to FPM installer!
case '*'
    echo Hi, stranger! Welcome to FPM installer!
end

echo "Copying the FPM files to ~/.config/fish/functions"
if cp -Rfv functions/* ~/.config/fish/functions/
    echo "source ./functions/fpm.fish" > ~/.config/fish/config.fish
    echo "FPM installed! To get started type fpm_help"
else
    echo "Error installing the FPM!"
end

