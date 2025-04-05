# Python Program to Find the Factors of a Number
# find the factors of a number

# This function computes the factor of the argument passed
def print_factors(x):
    print("The factors of",x,"are:")
    for i in range(1, x + 1):
        if x % i == 0:
            print(i)

num = 290

print_factors(num)
        
'''
>>Output/Runtime Test Cases:

The factors of 290 are:
1
2
5
10
29
58
145
290
'''