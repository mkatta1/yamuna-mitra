# Python: Remove all whitespaces from a string
import re 

text='Python   Life'
print("Original Text:",text)
print("Without White Spaces:",re.sub(r'\s+','',text))