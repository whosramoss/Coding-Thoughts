'''
 Presentation of the if conditional and Logical Operators: and, or, not.
'''

name = input("Enter your name = ")
gender = input("Enter your gender (M / F) = ")
age = int(input("Enter your age = "))

print("name = " + name)


if (gender == 'M'):
    print("Your gender is Male!")
else:
    print("Your gender is Female!")


if (age < 16):
    print("You are under 18 years old")
    print("just a kid")
elif ( (age > 18) or (age < 50)):
    print("you are an adult\n")
else:
    print("ok old man!")

print("end!")

