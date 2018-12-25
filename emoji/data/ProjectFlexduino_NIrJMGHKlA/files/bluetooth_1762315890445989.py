import bluetooth
import sys

addr = "30:3A:64:24:C6:E8"
port = 1
sock = bluetooth.BluetoothSocket(bluetooth.RFCOMM)
sock.connect((addr,port))
print 'connected'
sock.settimeout(15.0)
sock.send('1')
