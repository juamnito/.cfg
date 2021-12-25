#!/bin/bash

comp=compton

if pgrep -u $UID -x $comp;
then
    killall -q $comp
else
    while pgrep -u $UID -x $comp;
    do
        sleep 1
    done
    $comp &
fi

