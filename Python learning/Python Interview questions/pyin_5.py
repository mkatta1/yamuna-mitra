# check if a number is prime or not prime.
'''
Prime numbers are a positive integer thats greater than 1 that also have no other factors except for 1 and the number itself. For example, the number 5 is a prime number, 
while the number 6 isnt (since 2 x 3 is equal to 6).
'''
def is_prime(number):
    if number>1: # 3>1
        for num in range(2,number):# 2
            if number%num==0: #2%2==0
                return "not a prime"
        return "prime"
    return "not a prime"
d=int(input("enter the number:"))
print(is_prime(d))




