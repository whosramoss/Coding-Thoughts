'''
 Create bar chart.
'''
import matplotlib.pyplot as plt

axisX = [1,2,3,4,5]
axisY = [10,50,20,30,10]

plt.title("bar chart")
plt.xlabel("X")
plt.ylabel("Y")
plt.bar(axisX,axisY)
plt.show()
