#! /bin/bash

repo=matrices
github_usr=ChicomeCipactli

if [ ! -d $HOME/Programacion ] ;
then
    mkdir $HOME/Programacion
fi

cd $HOME/Programacion

if [ ! -d $repo ] ;
then
    git clone https://github.com/$github_usr/$repo.git ;
fi
