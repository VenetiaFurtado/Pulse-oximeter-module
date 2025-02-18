import json
import numpy as np

log_data = []

for i in range(10):
    log_data.append((i,i+1,i+2))

a = np.array(log_data)
np.savetxt('test1.txt', a, fmt='%d')
#b = np.loadtxt('test1.txt', dtype=int)
#a == b

