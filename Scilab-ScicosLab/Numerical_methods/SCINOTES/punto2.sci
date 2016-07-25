function [y,z] = punto2(x)
    y=x-cos(x)
    z=1+sin(x)
endfunction
x=0:0.0001:%pi/2
[y,z]=punto2(x)
plot(x,y)
plot(x,z)
plot(x,zeros(x))
