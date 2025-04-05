#  Accept a hyphen-separated sequence of words as input and 
#  prints the sorted words
'''
input:green-red-black-white  
output:black-green-red-white 
'''
# items=[n for n in input("Enter the String:").split("-")]
# items.sort()
# print("-".join(items))

# green-red-black-white  
# string--> list
l=["green","red","black","white"]
l.sort()

# list--> string
print("-".join(l))
