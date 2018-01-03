#!/bin/bash
cd $HOME

xset +fp ~/.fonts
xset fp rehash

xrdb -merge ~/.Xdefaults
xmodmap ~/.Xmodmap

xsetroot -cursor_name left_ptr

exec >>~/.xsession-errors 2>&1
sxhkd -c $HOME/.config/sxhkd/sxhkdrc &
exec bspwm -c $HOME/.config/bspwm/bspwmrc
