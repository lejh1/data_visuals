''' 
Author: lejh1 - Justin Le
Date of Creation: 09/13/2018
Lst Modified Date: 09/13/2018
'''
import praw 
from praw.models import MoreComments
import datetime 
from datetime import timedelta
import pandas as pd
import matplotlib.pyplot as plt
import os 
import numpy as np

current_dir = os.getcwd()
visuals_dir = os.path.join(current_dir, "visuals")

# Making a visuals folder 
if not os.path.isdir(visuals_dir):
    os.mkdir(visuals_dir)

# Used for filling in time gaps
def perdelta(start, end, delta):
    curr = start
    while curr < end:
        yield curr
        curr += delta

# Reddit Instance
reddit = praw.Reddit(user_agent='Quick Parse',
                  client_id='WlOQgv_aMzxVpQ',
                  client_secret='AwqIgZSes1tnH1va9GCdwyFguXk',
                  )

# 9.13.2018 Nintendo Direct MegaThread
submission = reddit.submission(id='9fla9v')
time_list = list()

# Comments Parse
for top_level_comment in submission.comments:
    if isinstance(top_level_comment, MoreComments):
        continue
    time_list.append(datetime.datetime.fromtimestamp(top_level_comment.created_utc).strftime('%H:%M'))

# Data Manipulation/Cleaning
time_df = pd.Series(time_list)
counts = time_df.value_counts(sort = False)
counts.sort_index(inplace = True)
counts = counts[50:105] # Hardcoded based of observation
fulltime_list = list()
start = pd.Timestamp(counts.index[0])
end = pd.Timestamp(counts.index[len(counts)-1])

    # Create new df to fill in missing time units
for time in perdelta(start, end, timedelta(minutes = 1)):
    fulltime_list.append(time.strftime('%H:%M'))
fulltime_df = pd.DataFrame(fulltime_list)
fulltime_df.set_index(0, inplace = True)
fulltime_df["count"] = np.NaN
    # Merge with reddit data to have times when no comments were made
new_df = pd.merge(counts.to_frame(), fulltime_df, how = 'right', left_index= True, right_index= True)
new_df.drop(["count"],axis = 1, inplace = True)
new_df.fillna(0, inplace = True)
# print(new_df)


# Plot
fig, ax = plt.subplots(figsize = (16,10))
ax.plot(new_df.index, new_df.values, c = 'r')
plt.xticks(np.arange(len(new_df))[::2], new_df.index[::2], rotation = 90)
plt.ylabel("# of Top-Level Comments")
plt.xlabel("Time (Hour:Minute) - UTC")
plt.title("Top-Level Comments freq. during the 9.13.2018 Nintendo Direct MegaThread", fontdict = {'fontsize': 16, 'weight': 'bold'})
plt.grid(which = 'major', axis = 'y')
plt.savefig(os.path.join(visuals_dir, 'reddit'),dpi=300)
plt.close()
# plt.show()
