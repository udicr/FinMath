function out = payoff_comb(N,Nput,Ncall,Sput,Scall,S0,A,ST)
payoff_call = Ncall*max(ST-Scall,0);
payoff_put = - Nput*max(Sput-ST,0);
out = N + payoff_call + payoff_put;
end

