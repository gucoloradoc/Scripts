import numpy as np
Ca=1
T=np.ones(500)
To=np.ones(500)
To=To*Ca
T=T*Ca
t=1
D=2.2E-4
T[0]=0
dx=0.05
dt=0.1
while t<10800:
    for m in range(1, 499, 1):
        T[m]=To[m]+D*(dt/(dx*dx))*(To[m+1]-2*To[m]+To[m-1])
        To=T
    t=t+dt
print (T)

