#!/bin/bash

while true 
do
    if [ "wpctl get-volume @DEFAULT_AUDIO_SOURCE@" != "Volume: 1.00" ] && [ "wpctl get-volume @DEFAULT_AUDIO_SOURCE@" != "Volume: 1.00 [MUTED]" ]
    then
        wpctl set-volume @DEFAULT_AUDIO_SOURCE@ 100% 
    fi
done
