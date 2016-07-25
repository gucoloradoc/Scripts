function [y,et,er]=sin_taylor(x,n,a)
    //Resultado es un vector con y=sin(x) aproximado, et error true y er error relativo.
    h=x-a
    //n=n-1
    c=1
    A=[sin(a) cos(a) -sin(a) -cos(a)]
    //[y]=sin(a)
    [y]=0
        for i = 1:n
            y=y + A(c) * (h**(i-1)) / factorial(i-1)
            c=c+1
            if c==5 then
                 c=1
            end
        end
    et=abs(sin(x)-y)
    er=abs(sin(x)-y)/sin(x)
    disp("sin(x) aprox: "+ string(y))
    disp("Error verdadero: "+ string(et))
    disp("Error relativo: "+ string(et*100)+"%")
endfunction
