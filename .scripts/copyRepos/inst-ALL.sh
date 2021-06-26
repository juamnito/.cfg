#! /bin/bash

scripts=$(ls -I inst-all.sh | grep sh)

for script in $scripts ;
do
    ./$script 
done
