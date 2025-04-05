# Python Program to Remove Punctuation from a String 
punctuations="''''''!@#$%^&*()_+,."
mystr=input("Enter the string:")

new_str=""
for c in mystr:
    if c not in punctuations:
        new_str+=c
print(new_str)