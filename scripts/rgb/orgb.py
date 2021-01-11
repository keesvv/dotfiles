import sys
from openrgb import OpenRGBClient
from openrgb.orgb import Device
from openrgb.utils import DeviceType, RGBColor

def setMode(devices: list[Device], mode: str):
    for device in devices:
        device.set_mode(mode)

def setColor(devices: list[Device], color: RGBColor):
    for device in devices:
        device.set_color(color)

if len(sys.argv) < 2:
    sys.exit(1)

client = OpenRGBClient()
dram = client.get_devices_by_type(DeviceType.DRAM)
mobo_led = client.get_devices_by_type(DeviceType.MOTHERBOARD)

if sys.argv[1] == "off":
    setMode(dram, "off")
    setMode(mobo_led, "off")
elif sys.argv[1] == "on":
    setMode(dram, "rainbow")
    setMode(mobo_led, "rainbow")
elif sys.argv[1] == "dim":
    color = RGBColor(75, 10, 140)
    setMode(dram, "breathing")
    setMode(mobo_led, "direct")
    setColor(dram, color)
    setColor(mobo_led, color)
