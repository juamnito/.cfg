#! /bin/bash

repo=yay-git

if [ ! -d $HOME/tools ] ; then
    mkdir $HOME/tools
fi

cd $HOME/tools

if [ ! -d $repo ] ; then
    git clone https://aur.archlinux.org/$repo.git ;
fi

cd $repo
mkpkg -si
