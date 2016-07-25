function [y]=rozamiento(alpha,betha, h, l, D)
    //betha en grados
    betha=betha*%pi/180
    alpha=alpha*%pi/180
    A=l*sin(betha)
    B=l*cos(betha)
    C=(h+0.5*D)*sin(betha)-0.5*D*tan(betha)
    E=(h+0.5*D)*cos(betha)-0.5*D
    y=A*sin(alpha).*cos(alpha)+B*(sin(alpha)).^2-C.*cos(alpha)-E*sin(alpha)
endfunction
