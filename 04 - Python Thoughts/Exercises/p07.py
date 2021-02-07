'''
Creation of functions in Python.
'''

# Function to calculate people's BMI (Body Mass Index),
# the weight and height parameters.
def bmi(p,h):
    x = p/(h*h)
    print("BMI = " + str(x))
    return x

# Function that classifies if you are obese based on your BMI.
def classification(valueBMI):
    if (valueBMI <= 24.0):
        print ("Normal")
    elif(valueBMI <= 29.0):
        print ("Overweight")
    elif(valueBMI <= 34.0):
        print ("Obese Class I")
    elif(valueBMI <= 39.0):
        print ("Obese Class II")
    else:
        print ("Obese Class III	")


w = input("Enter your weight = ")
h = input("Enter your height in meters = ")

weight = float(w)
height  = float(h)

valueBMI = bmi(weight,height)
classification(valueBMI)

