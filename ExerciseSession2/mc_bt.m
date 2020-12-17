function price = mc_bt(S0,K,sigma,r,T,n,m)
%MC pricer with inomial trees
%   did it in a different way
dt = T/n;
u = exp(sigma*sqrt(dt));
d = exp(-sigma*sqrt(dt));
df = exp(-r*dt);
p = (exp(r*dt)-d)/(u-d);

price = 0;
for i=1:m
    x = binornd(n,p);
    price = price + max(S0*u^x*d^(n-x)-K,0);
end
price =  (price/m)*exp(-r*T);

