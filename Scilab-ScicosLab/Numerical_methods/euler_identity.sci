function euler_identity(x)
    //x and y defines the beginning (x) and the end (y) of an angular section. x and y must be in radians.
    //The euler identitity gives that e^(i*phi)=cos(x)+i*sin(x). This could be a vector.
    r=[0,cos(x)];
    im=[0,sin(x)];
    disp(plot2d(r,im,rect=[-1,-1,1,1]))
endfunction
