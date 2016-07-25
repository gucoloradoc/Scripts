function fx=interpol_lagrange(X,FX,x)
    if size(X)~=size(FX) then
        error("Dimension no correspondiente entre X y FX")
    end
    A=[X,FX]
    [n,m]=size(X)
    if m~=1 then
        error("Dimensiones incorrectas en los vectores de entrada")
    end
    if ~exists("x","l") then
    x=poly(0,"x") //En caso de que x no se defina en la entrada fx es un polinomio.
    end
//******************************************************************************************************************************************************************************************************************************
    fx=0 //Iniciación del la variable de suma.
    for i =1:n
        XTEMP=X
        FXTEMP=FX
        XTEMP(i)=X($)
        XTEMP=XTEMP(1:$-1)
        li=1 //Inicio del producto
        for j= 1:n-1
            li=li*(x-XTEMP(j))/(X(i)-XTEMP(j))
        end
        fx=fx+FX(i)*li
    end
endfunction
