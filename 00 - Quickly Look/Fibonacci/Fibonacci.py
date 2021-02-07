# Python 
def fib():
    a, b = 1, 1
    while True:
        yield a
        a, b = b, a + b

for index, x in enumerate(fib()):
    if index == 10:
        break
    print("%s" % x),

# Python 3
def fib3():
    a, b = 1, 1
    while True:
        yield a
        a, b = b, a + b

for index, x in enumerate(fib()):
    if index == 10:
        break
    print("{} ".format(x), end="")