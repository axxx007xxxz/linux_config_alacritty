#!/bin/bash
set -e

if [[ $UID == "0" ]]; then
	echo "ERROR: You must run this script as user!"
	exit 1
fi


# Make the directory if needed
if [[ ! -d "~/.config/alacritty" ]]; then
	mkdir ~/.config/alacritty
fi

# Copy configuration file
cp alacritty.yml ~/.config/alacritty/alacritty.yml

echo "Done."