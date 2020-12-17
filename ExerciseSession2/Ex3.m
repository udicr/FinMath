S0 = 35;
K = 35;
r = 0.04;
sigma = 0.3;
T = 9/12;
n = 100;

for m = [10,100,1000,10000,100000]
    price = mc_bt(S0,K,sigma,r,T,n,m)
end