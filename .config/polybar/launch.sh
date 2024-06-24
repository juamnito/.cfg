#!/bin/bash

bar=top
bottom=bottom
external=top-external
config=$HOME/.config/polybar/main.ini

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >> /dev/null; 
do 
    sleep 1; 
done

# Launch Polybar using default config location ~/.config/polybar/config
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log

polybar $bar --config=$config 2>&1 | tee -a /tmp/polybar1.log & disown
polybar $bottom --config=$config 2>&1 | tee -a /tmp/polybar2.log & disown

if [[ $(xrandr -q | grep 'HDMI') = *\ connected* ]]; then
	polybar $external --config=$config 2>&1 | tee -a /tmp/polybar2.log & disown
fi

echo "Polybar launched..." 
