from sympy import *
from scipy.integrate import quad
import random
import time
def integral(a,b):
    fx= lambda x: 1/sqrt(2*pi) * exp(-(x*x)/2)
    integral_fx = quad(fx, a, b)[0]
    return integral_fx

def Monte_Carlo(fun, M, a, b, total_points):  
    counter = 0
    x = float(0)
    y = float(0)
    for i in range(total_points):
        x = random.uniform(a,b)
        y = random.uniform(0,M)
        if y < fun(x):
            counter = counter + 1
    
    result = (counter/total_points)*(b-a)*M
    return result

def f(x):
    fx = float(1/sqrt(2*pi) * exp(-(x*x)/2))
    return fx

def binary(alpha):
    a=-6.0
    x_left=-6.0
    b=6.0
    x_right=6.0
    fx= lambda x: 1/sqrt(2*pi) * exp(-(x*x)/2)
    #value = integral(a,b)
    value = Monte_Carlo(fx,1,a,b,1000000)
    i=1
    while True:
        print("第{}次迭代,x_left={},x_right={},integral={}".format(i,x_left,x_right,value))
        i+=1
        if ((abs(value - 1 + alpha)) < 1e-5):
            return (x_left+x_right)/2
        #value = integral(a,(x_left+x_right)/2) + 1.0 - 0.9999999990134
        value = Monte_Carlo(fx,1,a,(x_left+x_right)/2,1000000) + 1.0 - 0.9999999990134
        if (x_left == x_right):
            return x_left
        if (value > 1 - alpha):
            x_right = (x_left+x_right)/2
        else:
            x_left = (x_left+x_right)/2

def newton(alpha):
    x = 1.5
    #value=integral(-6,x)+ 1.0 - 0.9999999990134
    fx= lambda x: 1/sqrt(2*pi) * exp(-(x*x)/2)
    value = Monte_Carlo(fx,1,-6,x,1000000)
    i=1
    while True:
        print("第{}次迭代,integral={},Xn={}".format(i,value,x))
        i+=1
        if (abs(value-(1-alpha))) < 1e-5:
            return x
        else:
            x = x - ((value-1+alpha) / f(x))
            #value = integral(-6,x)+ 1.0 - 0.9999999990134
            value = value = Monte_Carlo(fx,1,-6,x,1000000)+ 1.0 - 0.9999999990134

def main():
    alpha = float(input("Enter alpah:"))
    choose = int(input("1:Binary\n2:Newton\n"))
    if (choose==1):
        time_start=time.time()
        print("binary_result: ",binary(alpha))
        time_end=time.time()
        print('totally cost',time_end-time_start,'s')
    elif (choose==2):
        time_start=time.time()
        print("newton_result: ",newton(alpha))
        time_end=time.time()
        print('totally cost',time_end-time_start,'s')        
    else:
        print("error")


main()
