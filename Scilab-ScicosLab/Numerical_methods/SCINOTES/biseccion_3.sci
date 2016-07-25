function biseccion_3(a,b,esp,n)
    //a y b son límites del intervalo. "esp" es la toleracia porcentual. n el número máximo de iteraciones para el ciclo.
    k=1
    es=esp/100
    er=1
    while er > es
        //error relativo 
        er=abs((a-b)/(a+b))
        if k==n then 
            break
        end
        //end
        c=(a+b)/2
        fa=rozamiento(a,11.5,49,89, 30)
        fb=rozamiento(b,11.5,49,89, 30)
        fc=rozamiento(c, 11.5,49,89, 30)
        if sign(fa) == -1 then ne=fa ; po=fb; np=a; pp=b;
        else ne=fb ; po=fa; np=b; pp=a;
        end
        if sign(fc) == -1 then np = c 
        else pp = c
        end
        a= np
        b=pp
        k=k+1
        
    end
    disp("raiz: " + string(c))
    disp("Error Relativo: " + string(er) + "  equivalente a: " + string(er*100)+ "%")
    disp("Repeticiones: "+ string(k))
endfunction
