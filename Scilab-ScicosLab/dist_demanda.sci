function [y]=dist_demanda(x,lamda)
    y=%e^(-lamda)*lamda^(x)./factorial(x)
endfunction

function [k]=k_value(x,lamda)
    y=sum(dist_demanda(x,lamda))
    k=1/y
endfunction

function [J]=pago(u,w,c,p)

    //J(u,w)=-c*u+p* minimo(u,w)
    
endfunction
function [jumax,jumaxpos,jud_v,ju]=secanteJ(c,p,x,lamda)
    k=k_value(x,lamda)
    y=k*dist_demanda(x,lamda)
    pacum=cumsum(y)
    jud_v=-c+p.*y
    ju=-c*x+p*pacum.*x
    [jumax,jumaxpos]=max(jud_v)
endfunction
ws=80
wb=40
lamda=60
c=100
p=300

x=wb:ws

k=k_value(x,lamda)

y=k*dist_demanda(x,lamda)
pacum=cumsum(y)
[jumax,jumaxpos,jud,ju]=secanteJ(c,p,x,lamda)
plot(x,0)

pacum=sort(pacum)

plot2d2(ju,pacum)
plot(x,c/p)
//xset("window",2)
//plot(k*y,ju)
