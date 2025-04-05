# Python function that accepts a string and calculate the number of upper case letters and lower case letters.
def string_test(s):
   d={'Upper_case':0,"Lower_case":0}
   for i in s:
      if i.isupper():
         d['Upper_case']+=1
      elif i.islower():
         d['Lower_case']+=1
      else:
         pass
   print("Upper case letters:",d["Upper_case"])  
   print("lower case letters:",d["Lower_case"])  
string_test("This is Python Life Channel")