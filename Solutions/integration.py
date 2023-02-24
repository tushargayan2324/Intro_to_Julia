from math import exp, cos
from time import time


def func(x):
    #return exp(-x)*x**(-0.2)
    return x**(1/x)
    #return -(x-1)*(x-2)

def integrate(f,x_i,x_f):
    dx = 10**(-7)  #dx
    S = 0

    #x_i = -6
    #x_f = 1
     
    N = int(abs(x_f-x_i)/dx)

    for i in range(N):
        S += dx*func(x_i + i*dx)

    return S

in_time = time()

print(integrate(func,0.5,5))

tot_time = time() - in_time

print(tot_time)

#dx = 10^-7, 0.5->5 x^(1/x)
# 5.369212800469707
# 17.279351234436035 secs