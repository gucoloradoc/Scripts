x=0.7
ve=%e.^x
i=0
va=0
while (((ve-va)/ve)>0.00005)
    va=va+(x.^i)/factorial(i)
    i=i+1
end
disp("El valor aproximado es: ")
disp(va)
disp("El valor exacto es:")
disp(ve)
disp("El numero de pasos fueron: ")
disp(i)
