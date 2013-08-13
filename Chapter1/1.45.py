x = 7
y = 1.0

def f(y):
    global x
    return (x / (y ** 6) + y) / 2.0

for i in range(1, 40):
    y = f(y)
    print y
