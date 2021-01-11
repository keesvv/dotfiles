import sys
from openrgb import OpenRGBClient
from openrgb.orgb import Device
from openrgb.utils import DeviceType

def setMode(devices: list[Device], mode: str):
    for device in devices:
        device.set_mode(mode)

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
