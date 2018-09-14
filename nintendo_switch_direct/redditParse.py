import praw 
from praw.models import MoreComments
import datetime
import pandas as pd
import matplotlib.pyplot as plt
import os 
import numpy as np

current_dir = os.getcwd()
visuals_dir = os.path.join(current_dir, "visuals")

# Making a visuals folder 
if not os.path.isdir(visuals_dir):
    os.mkdir(visuals_dir)

reddit = praw.Reddit(user_agent='Quick Parse',
                  client_id='WlOQgv_aMzxVpQ',
                  client_secret='AwqIgZSes1tnH1va9GCdwyFguXk',
                  )
submission = reddit.submission(id='9fla9v')
time_list = list()
for top_level_comment in submission.comments:
    if isinstance(top_level_comment, MoreComments):
        continue
    time_list.append(datetime.datetime.fromtimestamp(top_level_comment.created_utc).strftime('%H:%M'))
time_df = pd.Series(time_list)
counts = time_df.value_counts(sort = False)
counts.sort_index(inplace = True)
start = pd.Timestamp(counts.index[0])
end = pd.Timestamp(counts.index[len(counts)-1])
xt = np.linspace(start.value, end.value, 10)
xt = pd.to_datetime(xt)
print(len(xt))
# counts.plot.line()
# plt.xticks(np.arange(len(xt)),  xt.strftime('%H:%M'))
# # plt.gcf().autofmt_xdate()
# plt.show()
