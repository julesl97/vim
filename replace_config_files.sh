#!/bin/bash

#get the directory where the script is
DIR="$(dirname "$(readlink -f "$0")")"

#check if the repo has been recursilevy clone
if [ ! "$(ls -A $DIR/.vim/bundle/Vundle.vim)" ]; then
    echo "cloning submodule..."
    cd $DIR
    git submodule update --init --recursive
    echo "cloning submodule DONE"
fi

if [ -f ~/.vimrc ]; then
    while true; do
        read -p "Do you wish to delete your current vim config ? (y/n)" yn
        case $yn in
            [Yy]* ) rm -rf ~/.vim*; break;;
            [Nn]* ) echo "Installation cancelled"; exit;;
            * ) echo "Please answer yes or no.";;
        esac
    done
fi

cp .vim* ~/

echo "Installation completed"

read -p "Do you wish to delete this local git repo ?" yn
case $yn in
    [Yy]* ) cd ~; rm -rf $DIR;;
esac
