import time
import ctypes
from ctypes import windll, Structure, c_long, byref

def screenInfo():
    """Returns the width and height of the computer screen.
    """
    user32 = ctypes.windll.user32
    sW = int(user32.GetSystemMetrics(0))
    sH = int(user32.GetSystemMetrics(1))
    return sW, sH

class POINT(Structure):
    """Gathers x and y coordinates of mouse cursor.
    """
    _fields_ = [("x", c_long), ("y", c_long)]

def queryMousePosition():
    """Returns the values of x and y coordinates
    of mouse cursor.
    """
    pt = POINT()
    windll.user32.GetCursorPos(byref(pt))
    return pt.x, pt.y

def processCoords(x, y):
    """Returns the grid value that the cursor is placed upon.
    """
    sW, sH = screenInfo()
    
    if (x in range(0, int(sW/3))) and (y in range(0, int(sH/3))):
        return '1'
    elif (x in range(int(sW/3), int(2*sW/3))) and (y in range(0, int(sH/3))):
        return '2'
    elif (x in range(int(2*sW/3), sW)) and (y in range(0, int(sH/3))):
        return '3'
    elif (x in range(0, int(sW/3))) and (y in range(int(sH/3), int(2*sH/3))):
        return '4'
    elif (x in range(int(sW/3), int(2*sW/3))) and (y in range(int(sH/3), int(2*sH/3))):
        return '5'
    elif (x in range(int(2*sW/3), sW)) and (y in range(int(sH/3), int(2*sH/3))):
        return '6'
    elif (x in range(0, int(sW/3))) and (y in range(int(2*sH/3), sH)):
        return '7'
    elif (x in range(int(sW/3), int(2*sW/3))) and (y in range(int(2*sH/3), sH)):
        return '8'
    elif (x in range(int(2*sW/3), sW)) and (y in range(int(2*sH/3), sH)):
        return '9'

"""
while True:
    pos = queryMousePosition()
    print(pos)
    print(processCoords(pos[0], pos[1]))
    time.sleep(0.5)
"""
