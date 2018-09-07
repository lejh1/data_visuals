''' 
Author: lejh1 - Justin Le
Date of Creation: 09/06/2018
Lst Modified Date: 09/06/2018
'''

import os 
import pandas as pd
import matplotlib as plt 

cur_dir = os.getcwd()
data_dir = os.path.join(cur_dir, "data")
poke_path = os.path.join(data_dir, "pokemon.csv")
visuals_path = os.path.join(cur_dir, "visuals")

if not os.path.isdir(visuals_dir):
    os.mkdir(visuals_dir)

