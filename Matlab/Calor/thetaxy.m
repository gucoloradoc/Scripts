function z=thetaxy(x,y,W,L)
%Calcular el theta en una posición x,y.
z=0;
for n = 1:30
    z=z+((-1)^(n+1)+1)/n*sin(n*pi*x/L)*sinh(n*pi*y/L)/sinh(n*pi*W/L);
end
z=2*z/pi;
end