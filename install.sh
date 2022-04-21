#!/usr/bin/env bash

install_alacritty() {
    if [[ `whereis alacritty` ]]; then
        echo -e "\e[0;32m+---Backup your Alacritty Conf---+\e[0m\n"
        if [[ `ls ~/.config/alacritty` ]]; then
            mv ~/.config/alacritty ~/.config/ALACRITTY.BAK
            mkdir -p ~/.config/alacritty
        fi
        echo -e "\e[0;32m Copy the files for your .config\e[0m"
        cp -r `pwd`/files/*  "$HOME"/.config/alacritty
        echo -e "\n\e[0;32m+-----------Finished!-----------+\e[0m"
    else
        echo -e "\e[0;32m+---Install Alacritty---+\e[0m\n"
        sudo pacman -S alacritty
        echo -e "\e[0;32m Copy the files for your .config\e[0m"
        cp -r `pwd`/files/*  "$HOME"/.config/alacritty
        echo -e "\n\e[0;32m+-------Finished!-------+\e[0m"
    fi

}
install_alacritty
