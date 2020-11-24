function out = ex3_a(S0,r,T,K,sigma,n,option_type)
%ex2_a n step binomial tree pricing for calls/puts
%   Detailed explanation goes here
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
if (option_type == "Call")
    f(:,n+1) = [max(S(:,n+1)-K,0)];
elseif (option_type == "Put")
    f(:,n+1) = [max(K-S(:,n+1),0)];
else
    out = NaN;
end   
if (option_type == "Call")
    for j = n:-1:1
        for i = 1:j
            fc = df*(p*f(i,j+1)+(1-p)*f(i+1,j+1));
            fe = max(S(i,j)-K,0);
            f(i,j) = max(fc,fe);
        end
    end
elseif (option_type == "Put")
     for j = n:-1:1
        for i = 1:j
            fc = df*(p*f(i,j+1)+(1-p)*f(i+1,j+1));
            fe = max(K-S(i,j),0);
            f(i,j) = max(fc,fe);
        end
     end
else
    out = NaN;
end  
out = f(1,1);
end

