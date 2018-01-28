# Commands called at Xserver start (startx)

# German keyboard layout
setxkbmap de nodeadkeys

# set cursor style
xsetroot -cursor_name left_ptr

# loading .Xresources
xrdb -merge .Xresources

# syncronizing copy/paste
# autocutsel -fork &
# autocutsel -selection PRIMARY -fork &

# Setting backgound with feh
~/.fehbg &

# xautolock with i3lock
xautolock &

# mute error sound
xset -b

# urxvt daemon
urxvtd &

# set polybar width
export BAR_WIDTH=30
export BAR_GAP=4

# MPD daemon start (if no other user instance exists)
[ ! -s ~/.config/mpd/pid ] && mpd

# ncmpcpp in background (for popups)
urxvt -e sh -c "xdo hide && ncmpcpp" &

# start server hosting startpage
nohup ~/Startpages/python-server.sh > /dev/null &

#starting wm
exec bspwm
