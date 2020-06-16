#!/usr/bin/python3

#
# Script for controlling my Hue bulbs
#

import os
import sys
import datetime
from phue import Bridge

focus_scene = 'eeuikaWaWMUVdw-'
chill_scene = 'ExG65m1qcHIW6k-'
dim_scene   = 'j1uBBjWRkozFJDa'
bridge_ip   = '192.168.1.2'
room_name   = 'Gamekamer'
ledstrip_id = 6

# Insufficient arguments
if len(sys.argv) < 2:
    sys.exit(1)

if len(sys.argv) > 2 and \
    sys.argv[2] == 'only_if_late' and \
    datetime.datetime.now().hour < 22:
        sys.exit(0)

# Initialise bridge
bridge = Bridge(bridge_ip)

# Connect if not yet connected
if not os.path.isfile('~/.python_hue'):
    bridge.connect()

if sys.argv[1] == 'focus':
    bridge.activate_scene(room_name, focus_scene)
elif sys.argv[1] == 'chill':
    bridge.activate_scene(room_name, chill_scene)
elif sys.argv[1] == 'dim':
    bridge.activate_scene(room_name, dim_scene)
elif sys.argv[1] == 'notification':
    b.set_light(ledstrip_id, 'alert', 'select')

