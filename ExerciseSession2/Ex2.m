K = 35;
S0 = 35;
r = 0.04;
sigma = 0.3;
T = 9/12;

for n=[10,50,100,1000,2000]
    price = ex2_a(S0,r,T,K,sigma,n,"Call")
end

bsprice = bs(S0,K,r,T,sigma)