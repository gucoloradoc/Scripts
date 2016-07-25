X=[8.1,8.3,8.6,8.7]'
FX=[16.94410,17.56492,18.50515,18.82091]'
P=interpol_lagrange(X,FX)
Y1=horner(P,8.4)
x=(8:0.01:9)
y=horner(P,x)
z=x.*log(x)
//plot(x,y)
//plot(x,z)

plot(x,z-y) //Comparar la diferencia
plot(x,zeros(x))
