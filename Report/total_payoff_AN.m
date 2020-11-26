function out = total_payoff_AN(ST,S0,N,p)
A = 0.8*S0;
if ST < A
    out = N/A * ST
elseif  ST > S0
    out = N + p*(N/S0)*(ST-S0);
else 
    out = N;
end
end

