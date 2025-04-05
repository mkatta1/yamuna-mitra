# Python program to solve the Fibonacci sequence using recursion.
def fib(n):
  if n==1 or n==2:
    return 1 
    #(n-1)+(n-2) 
  else:
    return(fib(n-1)+fib(n-2))
print(fib(7))