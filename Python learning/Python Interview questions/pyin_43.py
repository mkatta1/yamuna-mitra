# Python Program to Convert Two Lists Into a Dictionary
# Using zip and dict methods

index = [1, 2, 3]
languages = ['python', 'java', 'c']

dictionary = dict(zip(index, languages))
print(dictionary)
