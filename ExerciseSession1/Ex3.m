K = 55;
S0 = 56;
r = 0.04;
sigma = 0.3;
T = 10/12;
%%a
n = 50;
am_put = ex3_a(S0,r,T,K,sigma,n,"Put")

%%b
e_put = ex2_a(S0,r,T,K,sigma,n,"Put") 

%%c
e_cal = ex2_a(S0,r,T,K,sigma,1000,"Call")

%%d
a_cal = ex3_a(S0,r,T,K,sigma,1000,"Call")

%%c
n = 1:10:1000;
EC_BTM = zeros(length(n),1);
for i = 1:length(n)
    EC_BTM(i) = ex2_a(S0,r,T,K,sigma,n(i),"Call");
end

EC_BS = bs(S0,K,r,T,sigma);

%plot results
figure()
plot(n,EC_BTM,'LineWidth',1)
hold on
plot(n,EC_BS*ones(length(n),1),'--','LineWidth',1)
hold off
legend({'Binomial tree model','Black-Scholes model'},'FontSize',10)
xlabel('Number of steps')
ylabel('European Call Price')


% compare
EC_BS
tousandstepBTM = ex2_a(S0,r,T,K,sigma,1000,"Call")

%d 
n = 50;
AC = ex3_a(S0,r,T,K,sigma,n,"Call")
AC = ex2_a(S0,r,T,K,sigma,n,"Call")
%they are the same because positive interest rate-> it is never optimal to
%exercise the american call option early 
