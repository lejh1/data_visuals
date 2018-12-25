''' 
Author: lejh1 - Justin Le
Date of Creation: 08/30/2018
Lst Modified Date: 09/01/2018
'''

import os 
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from lxml import etree

# Getting current directory and the directory containing the data, visuals and additional paths
working_dir = os.getcwd()
data_dir = os.path.join(working_dir, 'data')
csv_path = os.path.join(data_dir, 'County_MedianRentalPrice_1Bedroom.csv')
map_path = os.path.join(data_dir, 'Usa_counties_large.svg')
map_CA_path = os.path.join(data_dir, 'California_county_map_(labeled).svg')
visuals_dir = os.path.join(working_dir, 'visuals')

# Making a visuals folder 
if not os.path.isdir(visuals_dir):
    os.mkdir(visuals_dir)

df = pd.read_csv(csv_path)

def BarPlotCA(old_df):
    # Data Cleaning and Manipulation 
    columns_to_keep = list(old_df)
    del columns_to_keep[2:6]
    df = old_df[columns_to_keep].copy()
    df.where(df['State'] == 'CA',inplace = True)
    df.dropna(subset = ['State'], inplace = True)

    skip = 2
    for index, column in enumerate(df):
        if skip: # Used to iterate past the first 2 Columns - Need to optimize
            skip -= 1
            print(str(index) + ' ' + column)

        else:
            # df.sort_values(by=[column], inplace = True)
            # Plots
            x = list(df['RegionName'])
            x_pos = np.arange(len(x))
            y = list(df[column])
            plt.figure(figsize = (16,9)) #sizing
            plt.bar(x_pos, y, align = 'center', alpha = 1)
            plt.xticks(x_pos, x, rotation = 45)
            plt.ylabel('Monthly Median Rent')
            title = 'CA 1 Bedroom Median Monthly Rent - ' + column
            plt.title(title)
            s_name = 'bar' + str(index) + '.png'
            plt.savefig(os.path.join(visuals_dir, s_name),dpi=150) # Need to figure out the dpi values
            plt.close()

def SVGMapCA(old_df):
    color_mapping = ['#ffffcc',
                    '#ffeda0',
                    '#fed976',
                    '#feb24c',
                    '#fd8d3c',
                    '#fc4e2a',
                    '#e31a1c',
                    '#bd0026',
                    '#800026']
    columns_to_keep = ['RegionName','State','2018-07']
    df = old_df[columns_to_keep].copy()
    df.where(df['State'] == 'CA',inplace = True)
    df.dropna(subset = ['State'], inplace = True)

    # median_rent = df['2018-07'].median()
    max_rent = 3500
    bucket = np.linspace(0, max_rent, len(color_mapping)+1)
    
    tree = etree.parse(open(map_CA_path, 'r'))
    for ele in tree.iter():
        if ele.tag.split("}")[1] == "path" or ele.tag.split("}")[1] == "polyline":
            for i, name in df['RegionName'].iteritems():
                split_name = name.replace(' ', '_')
                if name in ele.get("id") or split_name in ele.get("id"):
                    rent = df.loc[i,"2018-07"]
                    for index, price_range in enumerate(bucket):
                        color = color_mapping[0]
                        if rent <= price_range:
                            color = color_mapping[index-1]
                            break
                    # print(color)
                    # print(name)
                    ele.set('fill', color)
                    # print(ele.get('fill'))
    tree.write(os.path.join(visuals_dir, "output.svg"))                        
        # if "Yuba" in ele.get("id"): # Hard Break... Fix with count?
        #     break


# BarPlotCA(df)
SVGMapCA(df)
