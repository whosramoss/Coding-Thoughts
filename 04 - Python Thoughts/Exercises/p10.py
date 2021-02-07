'''
Working with files in python
Create a file in score.txt in the same directory as p10.py,
In the notes.txt file, put your first name and three notes.
On the other line the same thing a name and 3 notes and so
successively.
'''
import sys
        
try:
	f = open('score.txt','r')
	for line in f:
		l = line.split()
		print("name = " + l[0])
		n1 = float(l[1])
		n2 = float(l[2])
		n3 = float(l[3])
		average = (n1 + n2 + n3)/3.0
		print("average = ", average)
except FileNotFoundError:
	print ("Error: file not found!")	
finally:
	f.close()
