function fake_pos(a,b,es,n)
    k=1
    era=100
    while era > es
        if k==n then 
            break
        end
        fa=polinomio(a)
        fb=polinomio(b)
        c=b-((b-a)*fb)/(fb-fa)
        fc=polinomio(c)
        if sign(fa) == -1 then ne=fa ; po=fb; np=a; pp=b;
        else ne=fb ; po=fa; np=b; pp=a;
        end
        if sign(fc) == -1 then cv=np; np = c; cn=c;
        else cv=pp; pp = c; cn=c;
        end
        a= np
        b=pp
        era=abs((cn-cv)/(cv))*100
        
    end
    disp("raiz: " + string(c))
    disp("Error Relativo: " + string(era) + "%")
    disp("Repeticiones: "+ string(k-1))
endfunction
