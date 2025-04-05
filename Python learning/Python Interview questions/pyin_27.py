#Python: Get the smallest number from a list
# f=[1,2,3,4,5,-1]
# print(min(f))
f=[1,2,3,4,5,-1]
def smallest(list):
    min=f[0] #1
    for a in f:# 1,2,3,4,5,-1
        if a<min: # 1<1
            min=a
    return min
print(smallest(f))
