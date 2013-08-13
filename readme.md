Screencast for Tom's talk on July 2
====
Tom messed up the screencast during his talk, so he's doing it again.
Follow all of the directions below, then advance the slides according to
the video. When the talk is finished, close everything.

## Download stuff
Get the slides

    git submodule init
    git submodule update

Download `tm.m4v` from [here](https://docs.google.com/a/zipfianacademy.com/file/d/0B1gdiR_qp6zobzZRMUZjdldjVk0/edit?usp=drive_web).

## Serve the slides
Serve the slides on [localhost:8000](http://localhost:8000).

    cd slides && python -m SimpleHTTPServer

## Record the screencast.
This saves the screencast to `screencast.mkv`.

    ffcast ffmpeg -f alsa -i pulse -ab 192 -acodec pcm_s16le -f x11grab -s %wx%h -r 25 -i :%d+%x,%y -qscale 0 screencast.mkv

If you don't have `ffcast`, use this.

    ffmpeg -f alsa -i pulse -ab 192 -acodec pcm_s16le -f x11grab -s `xdpyinfo | grep 'dimensions:'|awk '{print $2}'` -r 25 -i :0.0 -qscale 0 screencast.mkv

## Play the video

    mplayer tm.m4v
