if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  exec startx > /dev/null 2> .xinit.log
fi
