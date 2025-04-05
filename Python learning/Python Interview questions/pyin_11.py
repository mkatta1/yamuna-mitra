# check if the number is an Armstrong number or not
# without using power function
n=int(input("Enter the Number:"))
s=n
b=len(str(n))
sum1=0
while n!=0: # 15
    r=n%10 # 15%10=3
    sum1=sum1+(r**b)# 3**3=27 5**3=125  1**3=1
    n=n//10 
if s==sum1:
    print("armstrong number")
else:
    print("Not a armstrong number")


    # 153=153