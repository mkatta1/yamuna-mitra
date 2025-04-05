# Python Program to Display Powers of 2 Using Anonymous Function
# Display the powers of 2 using anonymous function

terms = 11

# Uncomment code below to take input from the user
# terms = int(input("How many terms? "))

# use anonymous function
result = list(map(lambda x: 2 ** x, range(terms)))

print("The total terms are:",terms)
for i in range(terms):
    print("Value of 2 to power",i,"is:",result[i])
        
'''
>>Output/Runtime Test Cases:
     
The total terms are: 11
Value of 2 to power 0 is: 1
Value of 2 to power 1 is: 2
Value of 2 to power 2 is: 4
Value of 2 to power 3 is: 8
Value of 2 to power 4 is: 16
Value of 2 to power 5 is: 32
Value of 2 to power 6 is: 64
Value of 2 to power 7 is: 128
Value of 2 to power 8 is: 256
Value of 2 to power 9 is: 512
Value of 2 to power 10 is: 1024
'''