function newt_rap(x,es,n, delta)
     //x1=x0-f(x0)/f'(x0)
     x0 = x
     era=100
     k=1
     while era >= es
         if k==n then
             break
         end
         [fx0, fpx0] = punto2(x0)
         x1=x0-fx0/fpx0
         //if fx0 < delta then
           //  break
         //end
         era=abs((x0-x1)/(x1))*100
         k=k+1
         x0=x1
     end
     disp("raiz: " + string(x0))
     disp("Error Relativo: " + string(era) + "%")
     disp("Repeticiones: "+ string(k))
endfunction
