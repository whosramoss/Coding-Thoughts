'''
Scatter plot.
'''
import matplotlib.pyplot as plt

axisX1 = [1,3,5,7,9]
axisY1 = [2,3,7,1,0]

plt.title("Scatter plot")
plt.xlabel("X")
plt.ylabel("Y")
plt.scatter(axisX1,axisY1)
plt.show()
