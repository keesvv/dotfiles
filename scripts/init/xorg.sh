#!/bin/sh

# Mouse options
xinput --set-prop $MOUSE_DEVID 'libinput Accel Speed' $MOUSE_ACCEL

# Touchpad options (if available)
if [ ! -z "$TOUCHPAD_DEVID"  ]; then
    xinput --set-prop $TOUCHPAD_DEVID 'libinput Accel Speed' $TOUCHPAD_ACCEL
    xinput --set-prop $TOUCHPAD_DEVID 'libinput Tapping Enabled' 1
    xinput --set-prop $TOUCHPAD_DEVID 'libinput Natural Scrolling Enabled' 1
fi

# Keyboard options 
xset r rate $KEYBOARD_DELAY $KEYBOARD_RATE

# Other options
xsetroot -cursor_name left_ptr &
