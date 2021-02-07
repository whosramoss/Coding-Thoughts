'''
Create a line Chart 
'''
import matplotlib.pyplot as plt

axisX = [2,4,6]
axisY = [1,5,20]

plt.title("Line Chart")
plt.xlabel("X")
plt.ylabel("Y")
plt.plot(axisX,axisY)
plt.show()
