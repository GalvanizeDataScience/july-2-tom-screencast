#!/bin/sh

mplayer tm.m4v&
echo \
ffmpeg -f alsa -i pulse -ab 192 -acodec pcm_s16le -f x11grab -s `xdpyinfo | grep 'dimensions:'|awk '{print $2}'` -r 25 -i :0.0 -qscale 0 screencast.mkv
