function out = ex4_a(S0,K,r,T,sigma,n,ea)

dt = T/n;
u = exp(sigma*sqrt(dt));
d = exp(-sigma*sqrt(dt));
df = exp(-r*dt);
p = (exp(r*dt)-d)/(u-d);

S = zeros(n+1,n+1);
for i=1:n+1
    for j=1:n+1
    S(i,j) = S0 * (u^(j-i))*(d^(i-1));
    end
end
f = zeros(n+1,n+1);
f(:,n+1) = [S(:,n+1).*max(K-S(:,n+1),0)];

for j = n:-1:1
for i = 1:j
    fc = df*(p*f(i,j+1)+(1-p)*f(i+1,j+1));
    if ea == 0
        f(i,j) = fc;
    else      
        fe = S(i,j)*max(K-S(i,j),0);
        f(i,j) = max(fc,fe);
    end
end
end
 
out = f(1,1);
end

