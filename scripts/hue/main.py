#!/usr/bin/python3

#
# Script for controlling my Hue lights
#

import os
import sys
import datetime
from phue import Bridge

focus_scene = 'eeuikaWaWMUVdw-'
chill_scene = 'ExG65m1qcHIW6k-'
dim_scene   = 'j1uBBjWRkozFJDa'
bridge_ip   = '192.168.1.4'
room_name   = 'Gamekamer'
ledstrip_id = 6
bulb_id     = 3

# Insufficient arguments
if len(sys.argv) < 2:
    sys.exit(1)

# Initialise bridge
bridge = Bridge(bridge_ip)

# Connect if not yet connected
if not os.path.isfile('~/.python_hue'):
    bridge.connect()

# TODO: Refactor this mess
if sys.argv[1] == 'focus':
    bridge.activate_scene(room_name, focus_scene)
elif sys.argv[1] == 'chill':
    bridge.activate_scene(room_name, chill_scene)
elif sys.argv[1] == 'dim':
    bridge.activate_scene(room_name, dim_scene)
elif sys.argv[1] == 'notification':
    bridge.set_light(ledstrip_id, 'alert', 'select')
elif sys.argv[1] == 'off':
    bridge.set_light([ledstrip_id, bulb_id], 'on', False)
