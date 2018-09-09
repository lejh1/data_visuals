''' 
Author: lejh1 - Justin Le
Date of Creation: 09/06/2018
Lst Modified Date: 09/08/2018
'''

import os 
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt 

cur_dir = os.getcwd()
data_dir = os.path.join(cur_dir, "data")
poke_dir = os.path.join(data_dir, "pokemon.csv")
visuals_dir = os.path.join(cur_dir, "visuals")

if not os.path.isdir(visuals_dir):
    os.mkdir(visuals_dir)

df = pd.read_csv(poke_dir)
df = df[["classfication", "generation"]]
class_list = list()
gen_1_list = list()
gen_2_list = list()
gen_3_list = list()
gen_4_list = list()
gen_5_list = list()
gen_6_list = list()
gen_7_list = list()

for entry in df.iterrows():
    # print((entry[1][1]))
    if entry[1][1] == 1:
        for tex in entry[1][0].split():
            gen_1_list.append(tex)
    elif entry[1][1] == 2:
        for tex in entry[1][0].split():
            gen_2_list.append(tex)
    elif entry[1][1] == 3:
        for tex in entry[1][0].split():
            gen_3_list.append(tex)
    elif entry[1][1] == 4:
        for tex in entry[1][0].split():
            gen_4_list.append(tex)
    elif entry[1][1] == 5:
        for tex in entry[1][0].split():
            gen_5_list.append(tex)
    elif entry[1][1] == 6:
        for tex in entry[1][0].split():
            gen_6_list.append(tex)
    elif entry[1][1] == 7:
        for tex in entry[1][0].split():
            gen_7_list.append(tex)
    for tex in entry[1][0].split():
                class_list.append(tex)
class_ser = pd.Series(class_list)
gen_1_ser = pd.Series(gen_1_list)
gen_2_ser = pd.Series(gen_2_list)
gen_3_ser = pd.Series(gen_3_list)
gen_4_ser = pd.Series(gen_4_list)
gen_5_ser = pd.Series(gen_5_list)
gen_6_ser = pd.Series(gen_6_list)
gen_7_ser = pd.Series(gen_7_list)

# x_ax = list(class_ser)
class_ser.value_counts()[1:11].plot.bar()
plt.show()
# plt.show()
# x_pos = np.arange(len(x_ax))
# y = list(class_ser.value_counts()[1:11])
# print(class_ser.append(gen_1_ser))
# print((class_ser.value_counts()[1:11]))
# print((gen_1_ser.value_counts()[1:11]))
# print((gen_2_ser.value_counts()[1:11]))
# print((gen_3_ser.value_counts()[1:11]))
# print((gen_4_ser.value_counts()[1:11]))
# print((gen_5_ser.value_counts()[1:11]))
# print((gen_6_ser.value_counts()[1:11]))
# print((gen_7_ser.value_counts()[1:11]))


# print(df.head(5))