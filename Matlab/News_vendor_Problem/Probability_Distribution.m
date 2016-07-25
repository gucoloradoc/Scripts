function [y]=Probability_Distribution(lamda,wsostenido)
    %This is the probability distribution of the demand.
    x=0:wsostenido;
    y = exp(-lamda) * realpow(lamda,x) ./ factorial(x);
    y=y./sum(y);
    plot(x,y)
end