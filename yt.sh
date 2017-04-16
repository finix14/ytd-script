#! /usr/bin/env bash
export DISPLAY=:0
audio_dest='/media/Multimedia/Music/Others/Youtube'
if [ $1 = 'a' ]; then
    notify-send -u critical "Downloading m4a from Youtube"
    youtube-dl -x -f m4a -o "$audio_dest/%(title)s.%(ext)s" "`xclip -o`" && notify-send -u critical "Download Complete" || notify-send -u critical "Error while Downloading"

elif [ $1 = 'v' ]; then
    echo $2
fi
