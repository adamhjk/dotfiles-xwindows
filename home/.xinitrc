
# Support the HiDPI display
#export QT_AUTO_SCREEN_SCALE_FACTOR=1
#export GDK_SCALE=1
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
# xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
xrandr --dpi 128
xmodmap ~/.Xmodmap
vmware-user-suid-wrapper &

# Set up the screensaver, using Google's much better xsecurelock
#xset s 300 5
#xss-lock -n /usr/lib/xsecurelock/dimmer -l -- env XSECURELOCK_SAVER=saver_xscreensaver xsecurelock &

# Applications
#nm-applet &

xsettingsd &

feh --bg-scale ~/Pictures/beach.jpg &

exec i3
