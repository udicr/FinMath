function EC = bs(S0,K,r,T,sigma)
% Black Scholes pricing for european call options
%UNTITLED8 Summary of this function goes here
d1 = (log(S0/K)+(r+(sigma^2)/2)*T)/(sigma*sqrt(T));
%d2 = (log(S0/k)+(r-(sigma^2)/2)*T)/(sigma*sqrt(T));
d2 = d1 - sigma*sqrt(T);

EC = S0*normcdf(d1)-K*exp(-r*T)*normcdf(d2); 
end

% standard normal cdf
%function p = normcdf(x)
%p = 1/2*erfc(-x/sqrt(2));
%end