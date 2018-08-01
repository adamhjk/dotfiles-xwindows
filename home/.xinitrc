
# Support the HiDPI display
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export GDK_SCALE=1
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
# xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto
xrandr --dpi 192
xmodmap ~/.Xmodmap

xscreensaver -no-splash &

# Applications
nm-applet &

exec awesome
