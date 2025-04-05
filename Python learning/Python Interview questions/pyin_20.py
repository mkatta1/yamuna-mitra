# Write a Python program to detect the number of local variables declared in a function.

# local variable inside func
# global variable outside func
c=2 # global
def Kiran():
    x=2 # local
    y=3
    s="kiran"
print(Kiran.__code__.co_nlocals)