#!/bin/bash

LIST=".i3 .i3status.conf .spacemacs .bash_aliases"

if [ "$1" != "cp" ]
then
    echo "putting files into ~/"
    for I in $LIST; do
        echo "Copying file $I"
	      cp -R $I ~/$I
    done
else
    echo "Copying files from ~/"
    for I in  $LIST; do
        echo "Copying file $I"
        cp -R ~/$I $I
    done
fi
