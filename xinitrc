#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

#based on GPU change Xorg settings
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
done
 unset f
fi


#activate keybindings in ~/.xkeybindingsrc
xbindkeys

#source Xmodmap (inverted scrolling)
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

#change ouput source to NVIDIA if NVIDIA is enabled
if neofetch | grep  'NVIDIA'; then
	xrandr --setprovideroutputsource modesetting NVIDIA-0
fi

#Dual screen with Mac Retina at ETH
#Or single screen
#if xrandr | grep 'DP-0 connected'; then
#    xrandr --dpi 192 --fb 7680x2160 --output eDP-1-1 --primary --mode 3840x2160 --output DP-0 --scale 1.5x1.5  --pos 3840x0 --panning 3840x2160+3840+0
#else
#    xrandr --output eDP-1-1 --dpi 192 --mode 3840x2160 --primary
#fi

#Self made script for combining screens
cmd=$(python ~/Documents/scripts/auto_xrandr.py)
$cmd

exec i3
