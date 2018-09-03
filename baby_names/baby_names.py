''' 
Author: lejh1 - Justin Le
Date of Creation: 09/01/2018
Lst Modified Date: 09/01/2018
'''
import pandas as pd
import os
import seaborn as sns
import matplotlib.pyplot as plt
import matplotlib as mpl

working_dir = os.getcwd()
data_dir = os.path.join(working_dir, "data")
visuals_dir = os.path.join(working_dir, "visuals")

if not os.path.isdir(visuals_dir):
    os.mkdir(visuals_dir)

data_dict = dict()
count_list = [0]*26
years = list()
plot_dict = {'letters': list(map(chr, range(65,91)))}
plot_df = pd.DataFrame(plot_dict)

# Data extraction and manipulation
for i in range(1917,2018):
    s_name = "yob"+str(i)+'.txt'
    years.append(str(i))
    t_file = os.path.join(data_dir, s_name)
    current_set = pd.read_csv(t_file)
    current_set.columns = ['name','sex','num']
    data_dict[str(i)] = current_set

# Data Parsing to get counts of first letter
for year in years:
    for i, name in data_dict[year]["name"].iteritems():
        count_list[ord(name[0]) - 65] += int(data_dict[year].loc[i,"num"])
    plot_df[year] = count_list
    count_list.clear()
    count_list = [0]*26
plot_df.set_index("letters", inplace = True)
new_plot_df = (plot_df[:]/plot_df[:].max()).copy()
# print(new_plot_df)    

# Seaborn work
plt.figure(figsize= (16,9))
sns.heatmap(new_plot_df, vmin = 0)    
sns.set(font_scale= 2.0)
plt.yticks(rotation=0)
plt.title("First Letter of Baby Names from 1917-2017 - US")
plt.annotate('Author: Justin Le\nCode:https://github.com/lejh1\nData:https://catalog.data.gov', (102,20), size = 11)
plt.savefig(os.path.join(visuals_dir, "heatmap"),dpi=150) # Need to figure out the dpi values
# plt.show()