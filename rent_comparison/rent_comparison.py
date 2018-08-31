''' 
Author: lejh1 - Justin Le
Date of Creation: 08/30/2018
Lst Modified Date: 08/30/2018
'''

import os 
import pandas as pd
import seaborn as s 
import numpy as np
import logging as lg

# Getting current directory and the directory containing the data 
working_dir = os.getcwd()
data_dir = os.path.join(working_dir, 'data')
csv_dir = os.path.join(data_dir, 'County_MedianRentalPrice_1Bedroom.csv')
visuals_dir = os.path.join(working_dir, 'visuals')

# Making a visuals folder 
if not os.path.isdir(visuals_dir):
    os.mkdir(visuals_dir)

df = pd.read_csv(csv_dir)
print(df.head(5))