# Python Program to Count the Number of Digits Present In a Number
# Count Number of Digits in an Integer using while loop

num = 963969
count = 0

while num != 0:
    num //= 10
    count += 1

print("Number of digits: " + str(count))

'''
>>Output/Runtime Test Cases:
     
Number of digits: 6
'''