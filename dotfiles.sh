#!/bin/bash

LIST=".i3/config .i3status.conf .spacemacs .bash_aliases"

if [ "$1" == "up" ]
then
    echo "putting files into ~/"
    for I in $LIST; do
        echo "Copying file $I"
	      cp -R $I ~/$I
    done
elif [ "$1" == "down"  ]
then
    echo "Copying files from ~/"
    for I in  $LIST; do
        echo "Copying file $I"
        cp -R ~/$I $I
    done
else
    echo "Usage: ./dotfiles [command]"
    echo "Commands:"
    echo "    up - will put files into ~/"
    echo "    down - will copy files from ~/"
fi
