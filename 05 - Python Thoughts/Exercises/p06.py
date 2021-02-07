'''
Repetition Lists and Structures. 
The FOR is used when you knowhow many repetitions do you need to perform.
While you repeat as many times as necessary
'''

l = [2, 5 , 6, 1, 8, 3,9]
print("List elements:")
for elem in l:
    print(elem)


print("Supermarket list:")
newL = ["rice", "beans", "banana", "tomato"]
for itens in newL:
    print(itens)

# Prints the elements between a range of values
print("Range of values from 10 to 30:")
for i in range (10, 30):
    print(i)

out = "n"

while out != "s":
    n1 = float(input("Enter the first number = "))
    n2 = float(input("Enter the second number = "))
    division = n1/n2
    print("Division of n1 / n2= " + str(division))
    exit = input("Type 'e' to exit the system or any other thing to continue = ")


# Attention to break. Stops the repeat run
print("Example FOR with break")
for i in range (1,6):
    if i == 3:
        break
    print(i)


# Attention to Continue. Only the interaction is not performed
print("Example FOR continue")
for i in range (1,6):
    if i == 3:
        continue
    print(i)
