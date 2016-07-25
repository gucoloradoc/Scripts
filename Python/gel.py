import numpy as np
X=np.zeros((100,80))
Ca=1
T=np.ones(500)
To=np.ones(500)
To=To*Ca
T=T*Ca
t=1
D=2.2E-4
T[0]=0
dx=0.05
dt=1
x,y=0,0
while (t<=4000):
    for m in range(1, 499, 1):
        T[m]=To[m]+D*(dt/(dx*dx))*(To[m+1]-2*To[m]+To[m-1])
        To=T
   
    if t%50==0:
	for x in range(0,100,1):
	    X[x,y]=T[x]
	y+=1

    t=t+dt

import matplotlib.pyplot as plt
plt.plot(X)
plt.ylabel('Concentracion molar')
plt.xlabel('capa de difusion mm')
plt.show()	


	
      


