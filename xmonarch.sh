##!/usr/bin/env bash
# Author: Mr. Charkuils

echo -e "\033[0;33m"
echo -e "                                           _      "
echo -e "__  ___ __ ___   ___  _ __   __ _ _ __ ___| |__   "
echo -e "\ \/ / '_ ' _ \ / _ \| '_ \ / _' | '__/ __| '_ \  "
echo -e " >  <| | | | | | (_) | | | | (_| | | | (__| | | | "
echo -e "/_/\_\_| |_| |_|\___/|_| |_|\__,_|_|  \___|_| |_| "
echo -e "\033[0m"

# Required packages
sudo pacman -S --needed xmonad xmonad-contrib xmobar pamixer xautolock pulseaudio-alsa feh alacritty ttf-ubuntu-mono-nerd

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
