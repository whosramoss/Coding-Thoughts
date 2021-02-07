'''
Working with files in python
Create a file in score.txt in the same directory as p11.py,
In the score.txt file, put your first name and three score.
On the other line the same thing a name and 3 score and so
successively. You will write to an output file
called approved.txt only approved students.
'''
import sys
        
try:
    f = open('score.txt','r')
    g = open('approved.txt','w')
    for line in f:
        l = line.split()
        print("name = " + l[0])
        average = (float(l[1]) + float(l[2]) + float(l[3]))/3.0
        print("average = ", average)
        if (average >= 7.0):
            approved = str(l[0]) + ' media = ' + str(average) + '\n'
            g.write(approved)
except FileNotFoundError:
    print ("Error: file not found!")	
finally:
    f.close()
    g.close()
