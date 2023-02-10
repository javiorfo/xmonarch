##!/usr/bin/env bash
# Author: Mr. Charkuils
# Last Edited: 05 Dec 2022

echo -e "\033[0;33m"
echo -e "                                           _      "
echo -e "__  ___ __ ___   ___  _ __   __ _ _ __ ___| |__   "
echo -e "\ \/ / '_ ' _ \ / _ \| '_ \ / _' | '__/ __| '_ \  "
echo -e " >  <| | | | | | (_) | | | | (_| | | | (__| | | | "
echo -e "/_/\_\_| |_| |_|\___/|_| |_|\__,_|_|  \___|_| |_| "
echo -e "\033[0m"

# Required packages
sudo pacman -S --needed xmonad xmonad-contrib xmobar pamixer xautolock pulseaudio-alsa feh alacritty

# Check UbuntuMono Nerd Font
if ! ls ~/.local/share/fonts/nerd-fonts/UbuntuMono* 1> /dev/null 2>&1; then
    echo "xmonarch ==> Ubuntu Mono Nerd Font does not exist. Proceeding to install it..."
    sleep 1

    sudo pacman -S --needed wget unzip

    mkdir -p ~/.local/share/fonts/nerd-fonts

    # version v2.2.2. Update this when corresponds.
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/UbuntuMono.zip -P ~/.local/share/fonts/nerd-fonts

    unzip ~/.local/share/fonts/nerd-fonts/UbuntuMono.zip
    rm ~/.local/share/fonts/nerd-fonts/UbuntuMono.zip
    fc-cache -vf ~/.local/share/fonts/nerd-fonts

    echo "xmonarch ==> Ubuntu Mono Nerd Font installed!"
fi

# Function to copy xmonad
copy_xmonarch() {
    echo "xmonarch ==> Checking and copying xmonad folders..."

    rm -drf ~/.xmonad ~/.config/xmonad
    cp -dr xmonad ~/.config

    echo "xmonarch ==> Done! Log out and start Xmonad!"
}

# Copy keyboard latam config
if [ ! -e /etc/X11/xorg.conf.d/00-keyboard.conf ]; then
    while true; do
        echo -e "xmonarch ==> Do you want to set 00-keyboard.conf LATAM configuration? [y/n]"
        read
        case $REPLY in 
            [Yy] ) echo "xmonarch ==> Copying keyboard LATAM configuration...";
                   sudo cp xorg/00-keyboard.conf /etc/X11/xorg.conf.d/;
                   echo "xmonarch ==> 00-keyboard.conf copied!";
                break;;
            [Nn] ) 
                        break;;
            * ) echo -e "\033[0;31mxmonarch ==> Invalid response. Please, try again\033[0m";;
        esac
    done
fi

# Validate existing xmonad configuration
if [ -d ~/.config/xmonad ] || [ -d ~/.xmonad ]; then
        while true; do
            echo -e "\033[0;33mxmonarch ==> xmonad configuration already exists in your home directory. "
            echo -e "\033[0;33mxmonarch ==> This action will delete it. Do you want to continue? [y/n]\033[0m"
            read

            case $REPLY in 
                [Yy] ) copy_xmonarch;
                    break;;
                [Nn] ) echo "xmonarch ==> process canceled!";
                    exit;;
                * ) echo -e "\033[0;31mxmonarch ==> Invalid response. Please, try again\033[0m";;
            esac
        done
    else
        copy_xmonarch
fi
