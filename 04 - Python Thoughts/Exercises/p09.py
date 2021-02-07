'''
 Working with files in python
Create a file in in.txt in the same directory as p9.py,
In the in.txt file just put your full name.
'''
import sys
try:
    name = input("Enter the file name: ") # in.txt
	# 'r' Reading; 'w' Writing;  'a' Add at the end; 'r+' Reading and writing
    f = open(name,'r')
    s = f.readline()   # read only one line.
    print(s)
except FileNotFoundError:
	print ("Error: file not found!")	
else:
	print("Everything worked!!!")
finally:
	f.close()
	print("Closed file!!!")

print("End of program")
