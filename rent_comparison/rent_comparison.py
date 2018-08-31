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
import matplotlib.pyplot as plt

# Getting current directory and the directory containing the data 
working_dir = os.getcwd()
data_dir = os.path.join(working_dir, 'data')
csv_path = os.path.join(data_dir, 'County_MedianRentalPrice_1Bedroom.csv')
map_path = os.path.join(data_dir, 'Usa_counties_large.svg')
visuals_dir = os.path.join(working_dir, 'visuals')

# Making a visuals folder 
if not os.path.isdir(visuals_dir):
    os.mkdir(visuals_dir)

df = pd.read_csv(csv_path)

def BarPlotCA(old_df):
    df = old_df[['RegionName','State','2018-07']].copy()

    '''columns_to_keep = list(df)
    del columns_to_keep[2:6]
    print(columns_to_keep)'''

    # Data Cleaning and Manipulation 
    df.where(df['State'] == 'CA',inplace = True)
    df.dropna(inplace = True)
    df.sort_values(by=['2018-07'], inplace = True)

    x = list(df['RegionName'])
    x_pos = np.arange(len(x))
    y = list(df['2018-07'])
    plt.figure(figsize = (16,9)) #sizing
    plt.bar(x_pos, y, align = 'center', alpha = 1)
    plt.xticks(x_pos, x, rotation = 45)
    plt.ylabel('Monthly Median Rent')
    plt.title('CA 1 Bedroom Median Monthly Rent')
    # plt.show()

    plt.savefig(os.path.join(visuals_dir, 'bar1.png'),dpi=150)

# BarPlotCA(df)

# with open(map_path, 'r') as map:
#     for line in map:
#         print(map.readlines)

    # max_rent = df['2018-07'].max()
    # min_rent = df['2018-07'].min()

    #Notes: Work with SVG, try for loop to get multiple graphs from start ot finish?
