function out = ex2_a(S0,r,T,K,sigma,n,option_type)
%ex2_a n step binomial tree pricing for calls/puts
%   Detailed explanation goes here
dt = T/n;
u = exp(sigma*sqrt(dt));
d = exp(-sigma*sqrt(dt));
df = exp(-r*dt);
p = (exp(r*dt)-d)/(u-d);

S = zeros(n+1,1);
for i=1:n+1
   S(i,1) = S0 * (u^(n+1-i))*(d^(i-1)); 
end
f = zeros(n+1,n+1);
if (option_type == "Call")
    f(:,n+1) = [max(S-K,0)];
elseif (option_type == "Put")
    f(:,n+1) = [max(K-S,0)];
else
    out = NaN;
end   
for j = n:-1:1
    f(1:j,j) = df*(p*f(1:j,j+1)+(1-p)*f(2:j+1,j+1));
end
out = f(1,1);
end

