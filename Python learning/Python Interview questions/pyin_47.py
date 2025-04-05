# Python Program to Iterate Through Two Lists in Parallel
# Using zip (Python 3+)

list_1 = [1, 2, 3, 4, 5]
list_2 = ['a', 'b', 'c']

for i, j in zip(list_1, list_2):
    print(i, j)

'''
>>Output/Runtime Test Cases:
     
1 a
2 b
3 c
'''