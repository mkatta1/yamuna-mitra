# Check that a string contains only a certain set of characters
import re 

def is_allowed(string):
    chare=re.compile(r'[^a-zA-Z0-9]')
    string=chare.search(string)
    return not bool(string)
print(is_allowed("Abcd1234"))
print(is_allowed("##^$*$((#"))