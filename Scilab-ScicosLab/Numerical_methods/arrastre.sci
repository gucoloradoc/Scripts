function y=arrastre(c)
    y= ((9.8.*68.1).*(c.^(-1))).*(1-exp(-c*10/68.1))-40
endfunction
