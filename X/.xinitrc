# Commands called at Xserver start (startx)

# German keyboard layout
setxkbmap de nodeadkeys

# set cursor style
xsetroot -cursor_name left_ptr

# loading .Xresources
xrdb -merge .Xresources

# Setting backgound with feh
~/.fehbg &

# xautolock with i3lock
xautolock &

# mute error sound
xset -b

# compton composite manager
compton -b

# MPD daemon start (if no other user instance exists)
[ ! -s ~/.config/mpd/pid ] && mpd

# start server hosting startpage
(~/Misc/Galaxy/python-server.sh) &> /dev/null &

#starting wm
exec xmonad
