function [y]=Gauss_distribution(x,mu,sigma)
   % mu and sigma are scalars
   % x may be a vector of any dimensions
   y = 1 ./(sigma*sqrt(2*pi))*exp(-((x-mu)/sigma).^2/2);
end 

