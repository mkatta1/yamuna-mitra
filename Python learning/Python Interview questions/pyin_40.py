#Python program to triple all numbers of a given list of integers. Use Python map.

num=(1,2,3,4,5,6,7)
result=map(lambda x:x+x+x,num)
print(list(result))