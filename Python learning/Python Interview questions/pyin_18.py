# transpose a matrix using a nested loop
X = [[12,9],  # 3 rows 2 col
    [7 ,3],   # 2 rows 3 col
    [5 ,6]]
result = [[0,0,0],
         [0,0,0]]

import numpy as np
c=np.transpose(X)
print(c)

for i in range(len(X)):
    for j in range(len(X[0])):
        result[j][i]=X[i][j]
for r in result:
    print(r)