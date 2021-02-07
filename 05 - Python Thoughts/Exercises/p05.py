'''
 Explain the operation of Lists and basic operations of lists
'''

l = [5, 6, 7, 8]
print(l)

#prints the element in position 1, remembering that it starts 0
print(l[2])

# List size use len () function
print(len(l))   

l.append(10)
print("New list after adding 10 at the end = " + str(l))

position, value = 0, 20
l.insert(position,value)
print("New list after adding the 20 in the first position = " + str(l))

#Delete item 5 from the list
l.remove(5)
print("List without element 5 = " + str(l))

print("Position of element 8 in the List = " + str(l.index(8)))

#To sort a list use the sort command
l.sort()
print("List sorted from smallest to largest = " + str(l))

l.reverse()
print("List sorted from largest to smallest = " + str(l))

