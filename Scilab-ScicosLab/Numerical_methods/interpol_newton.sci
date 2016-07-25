function [fx,A,R]=interpol_newton(X,FX,g,x)
    //Retorna un valor o un polinomio, dependiendo de si es ingresado un valor de x o no; Retorna también la matriz A de Diferencias divididas con los vectores X y FX concatenados al inicio de la matriz.
    if size(X)~=size(FX) then
        error("Dimension no correspondiente entre X y FX")
    end
    A=[X,FX]
    [n,m]=size(X)
    if m~=1 then
        error("Dimensiones incorrectas en los vectores de entrada")
    end
    if ~exists("g","l") then //Función encontrada en ayuda de scilab, verifica que la variable exista.
    error("Introduzca el grado del polinomio")
    end
    if g>=n then
        error("Muy pocos puntos para un polinomio de grado " + string(g))
    end
    if ~exists("x","l") then
    x=poly(0,"x") //En caso de que x no se defina en la entrada fx es un polinomio.
    end
    temp=zeros(X) // el vector temporal tienen la misma dimensión que el vector de las x conocidas.
//*****Matriz A con X, FX y las diferencias Divididas
    for j=1:n-1
        A=[A,temp]
        for i = 1:n-j
            b=j+2
            A(i,b)=(A(i+1,b-1)-A(i,b-1))/(A(i+j,1)-A(i,1))
        end
    end
    //Polinomio de Newton a partir de las diferencias divididas 
    B=A(1,3:$)
    X2=x.*ones(n-1) //vector de dimensión N-1X1
    fx=FX(1)
    p=1 
    for i = 1:g
        p=p*(x-X(i))
        fx=fx+p*B(i)
    end
    //Estimación del error
    R=[]
    p=1
    for i = 1:n-1
        p=p*(x-X(i))
        R=[R,p*B(i)]
    end
endfunction
