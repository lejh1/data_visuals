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
    dictionary = {
        (0, 0): 'A', (1, 0): 'B', (2, 0): 'C', (3, 0): 'D', (4, 0): 'E', (5, 0): 'F', (6, 0): 'G', (7, 0): 'H', (8, 0): 'I',
        (0, 1): 'J', (1, 1): 'K', (2, 1): 'L', (3, 1): 'M', (4, 1): 'N', (5, 1): 'O', (6, 1): 'P', (7, 1): 'Q', (8, 1): 'R',
        (0, 2): 'S', (1, 2): 'T', (2, 2): 'U', (3, 2): 'V', (4, 2): 'W', (5, 2): 'X', (6, 2): 'Y', (7, 2): 'Z', (8, 2): '0',
        (0, 3): '1', (1, 3): '2', (2, 3): '3', (3, 3): '4', (4, 3): '5', (5, 3): '6', (6, 3): '7', (7, 3): '8', (8, 3): '9',
        (0, 4): 'h', (1, 4): 'i', (2, 4): 'j', (3, 4): 'k', (4, 4): 'l', (5, 4): 'm', (6, 4): 'n', (7, 4): 'o', (8, 4): 'p',
        }
    
    x1 = int(x//(sW/9))
    y1 = int(y//(sH/5))

    return dictionary[(x1, y1)]

"""
while True:
    pos = queryMousePosition()
    print(pos)
    print(processCoords(pos[0], pos[1]))
    time.sleep(0.5)
"""
