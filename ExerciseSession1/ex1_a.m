function out = ex1_a(S0,r,T,K,u,d,option_type)
%UNTITLED3 2 step Biniomial Tree pricing for options
%   Define deltat, p and the discount factor
dt = T/2;
df = exp(-r*dt);
p = (exp(r*dt)-d)/(u-d);
% compute stock prices at maturity
Suu = S0*u*u;
Sud = S0*u*d;
Sdd = S0*d*d;
%compute the option prices
f = zeros(3,3);
% fill the last colum with option payoffs fuu fud and fdd
if (option_type == "Call")
    f(:,3) = [max(Suu-K,0);max(Sud-K,0);max(Sdd-K,0)];
elseif (option_type == "Put")
    f(:,3) = [max(K-Suu,0);max(K-Sud,0);max(K-Sdd,0)];
else
    out = NaN;
end
% compute f(1,2) f(2,2) and f(1,1)
f(1,2) = df*(p*f(1,3)+(1-p)*f(2,3));
f(2,2) = df*(p*f(2,3)+(1-p)*f(3,3));
f(1,1) = df*(p*f(1,2)+(1-p)*f(2,2));
out = f(1,1);
end

