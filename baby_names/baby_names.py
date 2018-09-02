import pandas as pd
import os
import seaborn as sns

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
for i in range(1880,2018):
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
print(plot_df)    


# Count work; use k
# Seaborn work