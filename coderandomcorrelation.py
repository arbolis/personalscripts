import matplotlib.pyplot as plt
import statistics as stas
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
print(np.mean(nodes_3))
print(stas.stdev(nodes_3))
print(np.mean(time_3))
print(stas.stdev(time_3))

plt.plot(nodes_3, 'r', linewidth=3, label='n° of total nodes')
plt.grid()
plt.show()

# Now formatting to be R language friendly
with open('large_list.txt', 'w') as ll:
    ll.write('\n'.join(map(str, nodes_3)))
