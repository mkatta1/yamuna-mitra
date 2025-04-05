# Python Program to Calculate the Length of String
t="subscribe the channel"
# print(len(t))
def string_length(str1):
    count=0
    for char in str1:
        count+=1 # count=1+count
    return count
print(string_length(t))