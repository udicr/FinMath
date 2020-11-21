S0 = 85;
r = 0.04;
T = 1;
K = 87;
u = 1.08;
d = 0.95;

%% Call and Put
call = ex1_a(S0,r,T,K,u,d,"Call")
put = ex1_a(S0,r,T,K,u,d,"Put")


%% Put Call Parity
Put_PCP = (call - S0 + K*exp(-r*T))
