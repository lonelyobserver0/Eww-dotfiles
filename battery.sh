#!/bin/bash
# Script per mostrare la percentuale della batteria
battery_level=$(cat /sys/class/power_supply/BAT0/capacity)
charging_status=$(cat /sys/class/power_supply/BAT0/status)

if [ "$charging_status" == "Charging" ]; then
    echo "(box :class 'battery' Charging: $battery_level%)"
else
    if [ "$battery_level" -le 20 ]; then
        echo "(box :class 'battery low' Battery: $battery_level%)"
    else
        echo "(box :class 'battery' Battery: $battery_level%)"
    fi
fi
