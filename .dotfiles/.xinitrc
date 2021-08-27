xrdb -merge .Xresources &
hsetroot -fill ~/.dotfiles/Backgrounds/bg.jpg &
slstatus &
xbindkeys &
picom --config ~/.dotfiles/picom.conf &
exec dwm
