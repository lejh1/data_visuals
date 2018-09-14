# data_visuals
This is the start of some side projects regarding data visualizations with Python. This is to help me develop my self taught Data Science/Analyst skills to work with data using Python (pandas, numpy, seaborm, matplotlib, etc). Inspired by aaronpenne who helped introduce me to the world of data science.

First Letter of Baby Names from 1917 - 2017 (100 Years) - US
----------------
Interesting heatmap displaying the change over 100 years of the first letter of baby names. Each year is scaled where the max of each year is 1.0, using the method: Rescaling (min-max normalization) "https://en.wikipedia.org/wiki/Feature_scaling". Used Pandas, Seaborn and Matplotlib :)
![heatmap plot](https://github.com/lejh1/data_visuals/blob/master/baby_names/visuals/heatmap.png)
Data: [Data.gov US Data](https://catalog.data.gov/dataset/baby-names-from-social-security-card-applications-national-level-data)

Top-Level Comments freq. during the 9.13.2018 Nintendo Direct MegaThread
----------------
Fun line plot used to show the frequency of comments in a livethread on Reddit. I used this side project to learn about using APIs, in this case Reddit's API PRAW, to data mine. Used Pandas, PRAW, Numpy and Matplotlib. Still working on labelling the major events that occurred during the direct using illustrator!
![line plot](https://github.com/lejh1/data_visuals/blob/master/nintendo_switch_direct/visuals/reddit.png)
Data: [Reddit Thread Data](https://www.reddit.com/r/NintendoSwitch/comments/9fla9v/9132018_nintendo_direct_megathread/?sort=new)
API: [Reddit API](https://praw.readthedocs.io/en/stable/index.html)


1 Bedroom Apartment Monthly Rent Plots 2010 - 2018
----------------
Some visuals to show 1 Bedroom Apartment Monthly Rent from 2010 - 2018 in California per County.
Started 8/30 (first data visual project), needs lots of work to clean and update heat map with legend.
Also need to figure out how to make higher quality GIF and find better apartment listing dataset :( .


![bar plot gif](https://github.com/lejh1/data_visuals/blob/master/rent_comparison/visuals/bar.gif)


Static Bar Graph to show latest rent comparison.
![bar plot](https://github.com/lejh1/data_visuals/blob/master/rent_comparison/visuals/bar103.png)


Heatmap to show latest rent comparison and to practice writing over SVG files using lxml.
![CA Heat Map](https://github.com/lejh1/data_visuals/blob/master/rent_comparison/visuals/output.png)
Data: [Zillow Data](https://www.zillow.com/research/data/)
Data: [CA SVG Map Data](https://commons.wikimedia.org/wiki/File:California_county_map_(labeled).svg)



