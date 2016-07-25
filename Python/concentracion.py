#! /usr/Python-2.7.10/python
def cajones(x,dx,C):
	xi=0
	vC=[0]
	n=x/dx
	n=int(n)
	l=[0]
	for i in range(1,n+1):
		xi=xi+dx
		l.append(xi)
		vC.append(C)
	return l,vC
def tiempo(t,dt):
	ti=0
	n=t/dt
	n=int(n)
	l=[0]
	for i in range(1,n+1):
		ti=ti+dt
		l.append(ti)
	return l
def conc_t_colum(dt,t,dx,x,C): 
	[vx,vC]= cajones(x,dx, C)
	vt=tiempo(t,dt)
	old=vC
	for i in vt:
		for j in old:
			if (j != 0) and (j != len(vC)):  
				old[j+1]=old[i]+(dt/dx**2)*(old[j]-2*old[j]+old[j-1])
			print("hao")
	return old
	

print(conc_t_colum(1,3,1,50,1))




