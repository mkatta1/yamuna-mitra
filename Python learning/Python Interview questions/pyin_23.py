# Python: Split a string with multiple delimiters
import re
text = 'The quick brown\nfox jumps*over the lazy dog.'
print(re.split('; |, |\*|\n',text))

'''
string-collection of characters 
 
string--->split--> list

'''
# d="the,book,is.good"
# print(d.split([',','.']))