'''
Use of try to treat Exceptions.
'''
import sys

def typeNumber():
    while True:
        try:
            x = int(input("Enter a number: "))
            break
        except ValueError:
            print("It was not a number try again")
    return x

x = typeNumber()
try:
	z = 10 / int(x)
	print("The z value = ", z)
except ZeroDivisionError as err:   # Specific exception
	print("Error dividing by zero!!!\n", err)
except:	# General exception - Caution when using
	print("General execution error!!!", sys.exc_info()[0])
else: 						# If no exception is performed
	print("No error")  
finally: 					# Always will be executed
	print("'finally' will always be executed...")
