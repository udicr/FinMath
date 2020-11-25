function out = total_payoff_PPPN(ST,K1,K2,S0,N)
if ST < K1
    out = 0.9*N + (N/S0)*(K1-ST);
elseif  ST > K2
    out = 0.9*N + (N/S0)*(ST-K2);
else 
    out = 0.9*N;
end
end

