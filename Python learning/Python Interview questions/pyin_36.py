'''
find all numbers which are divisible by 7 but are not a multiple of 5.
'''
# 0-10000
l=[]
for i in range(0,1000):
    if i%7==0 and i%5!=0:
        l.append(str(i))
print(','.join(l))