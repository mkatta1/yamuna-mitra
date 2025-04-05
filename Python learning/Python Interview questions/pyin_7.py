# Write a Python function to sum all the numbers in a list.
def sum(numbers):# function defination
    total=0 # local variable
    for x in numbers: #[1,2,3,4]
        total+=x # total=total+x 
    return total 
print(sum([1,2,3,4])) # function call

s=[1,2,3,4]
print(sum(s))

