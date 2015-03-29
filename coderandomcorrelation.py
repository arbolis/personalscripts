import statistics as statistics
import numpy as np
from scipy.stats.stats import pearsonr
junk_list = []
nodes_1 = []
time_1 = []
with open('stockcorrected.txt', 'r') as f1:
    for line in f1:
        junk_list.append(line)
nodes_1, time_1 = junk_list[1::2], junk_list[::2]
nodes_2 = [string_[18:26] for string_ in nodes_1]
time_2 = [string_[18:23] for string_ in time_1]

nodes_3 = []
for line in nodes_2:
    nodes_3.append(int(line))
time_3 = []
for line in time_2:
    time_3.append(int(line))

print(pearsonr(nodes_3, time_3))


