#! /bin/bash

repo=Latex-Configuracion-Manual
github_usr=ChicomeCipactli

cd $HOME 

if [ ! -d $repo ] ;
then
    git clone https://github.com/$github_usr/$repo.git
fi
