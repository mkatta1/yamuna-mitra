# Python Program to Find LCM
# find the L.C.M. of two input number

def compute_lcm(x, y):

   # choose the greater number
   if x > y:
        greater = x
   else:
        greater = y

   while(True):
        if((greater % x == 0) and (greater % y == 0)):
            lcm = greater
            break
        greater += 1

   return lcm

num1 = 64
num2 = 24

print("The L.C.M. of", num1, "and", num2,  "is:", compute_lcm(num1, num2))
        
'''
>>Output/Runtime Test Cases:
     
The H.C.F. of 64 and 24 is: 8
'''