function biseccion(a,b,n)
    k=0
    for i= 1:n
        c=(a+b)/2
        fa=arrastre(a)
        fb=arrastre(b)
        fc=arrastre(c)
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
    disp("Repeticiones: "+ string(k))
endfunction
