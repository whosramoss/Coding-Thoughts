'''
Bar chart with different configurations.
'''
import matplotlib.pyplot as plt

axisX1 = [1,3,5,7,9]
axisY1 = [10,50,20,30,10]
axisX2 = [2,4,6,8,10]
axisY2 = [20,30,50,100,40]

plt.title("Bar chart")
plt.xlabel("X")
plt.ylabel("Y")
plt.bar(axisX1,axisY1, label = "Group 1")
plt.bar(axisX2,axisY2, label = "Group 2")
plt.show()
