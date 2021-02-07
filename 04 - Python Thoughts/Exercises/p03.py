'''
Receive a student's three grades and calculate the average. If score > 7, approved. Otherwise, Final Test.
'''

s1 = input("Enter score 1  = ")
s2 = input("Enter score 2 = ")
s3 = input("Enter score 3 = ")

# attention to conversion from str to float.
sumScore = float(s1) + float(s2) + float(s3)
average = sumScore / 3.0

# attention to conversion from float to str
print("average = " + str(average))

if (average >= 7.0):
    print("approved")
else:
    print("Final Test")

