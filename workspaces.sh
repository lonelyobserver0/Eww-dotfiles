#!/bin/bash
# Script per mostrare i workspace attivi
hyprctl workspaces | awk '{print $2}' | while read -r ws; do
    echo "(button :onclick 'hyprctl dispatch workspace $ws' $ws)"
done
