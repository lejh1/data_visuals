import struct, bluetooth, keyboard
from tkinter import *
from flexduino_coordinates import *

# Search for bluetooth device
print("Searching for devices...\n")

# Create an array with discovered devices
nearby_devices = bluetooth.discover_devices()
if not len(nearby_devices):
        print("No Devices Found")

print("Select your device by entering its coresponding number...")
for i in range(len(nearby_devices)):
        print(i, ": " , bluetooth.lookup_name(nearby_devices[i]))

# Select the appropiate bluetooth module
selection = input("Enter Device ID: ")
print("You have selected", bluetooth.lookup_name(nearby_devices[int(selection)]))
bd_addr, port = nearby_devices[int(selection)], 1

# Bluetooth send data
sock = bluetooth.BluetoothSocket(bluetooth.RFCOMM)
sock.connect((bd_addr, port))

# Laser control function
def laserControl():
        pos = queryMousePosition()
        data = processCoords(pos[0], pos[1])
        print('Sending data', data, '...')
        sock.send(data)
        time.sleep(0.2)

# Drive control function
def driveControl():
        data = input()
        data = data.strip(' ')
        sock.send(data.strip(' '))

# Execute loop infinitely
while True:
##        if keyboard.is_pressed(' '):
##                driveControl()
##        else:
##                laserControl()
        driveControl()
        
        
