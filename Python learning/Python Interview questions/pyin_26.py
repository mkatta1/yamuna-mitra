# Python Program to Access Index of a List Using for Loop
# Start the indexing with non zero value

# my_list = [21, 33, 66, 77]
# for index,val in enumerate(my_list,start=1):
#     print(index,val)   
'''
>>Output/Runtime Test Cases:
     
1 21
2 33
3 66
4 77
'''
my_list = [21, 33, 66, 77]
print(list(enumerate(my_list)))