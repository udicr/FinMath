S0 = 24;
sigma = 0.3;
r = 0.04;
K = 25;
T = 2;

%%a 
n = 10;
Qa = ex4_a(S0,K,r,T,sigma,n,0)

%%b
n = 1:10:1000;

Quanto = zeros(length(n),1);

for i = 1:length(n)
    Quanto(i) = ex4_a(S0,K,r,T,sigma,n(i),0);
end

figure()
plot(n,Quanto,'*')
xlabel('Number of periods')
ylabel('Option price')

%%c
n = 10;
AQuanto = ex4_a(S0,K,r,T,sigma,n,1)