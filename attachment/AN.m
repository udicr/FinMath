%% Example
N = 850;
S0 = 85;
p = 0.6;
r = 0.0011;
T = 14/12;

%% Example Plot
ST = 0.5*S0:1.5*S0;
payoff = zeros(length(ST),1);

for i = 1:length(ST)
    payoff(i) = total_payoff_AN(ST(i),S0,N,p);
end
figure()
plot(ST,payoff)
hold on
plot(ST,N*ones(1,length(ST)),'--','LineWidth',1)
plot(ST,(N/S0)*ST,'LineWidth',1)
xline(S0,'--')
xline(0.8*S0,'--')
legend({'total payoff of the AN with p = 0.6 at S_T','initial investment','direct investment in stocks','S0','Airbag level'},'FontSize',10)
xlabel('stock price S_T at maturity')
ylabel('total payoff at maturity')

%% Concrete product
S0 = 85.35;
N = 1707
r = 0.0011;
T = 14/12;
StrikePut = 67.5;
StrikeCall = 85.0;
putbid = 8.3;
callask = 18.5;
p = 0.55;
A = 0.8*S0;

%% Check for enough money
N_fixed = exp(-r*T)*N;

N_calls = p*N/S0
N_puts = N/A

N_remaining = N - N_fixed + N_puts*putbid - N_calls*callask 
ratioN_remaining = N_remaining/N




%% Plot concrete product
STplot = 0.5*S0:0.5:1.5*S0;
payoff = zeros(length(STplot),1);

for i = 1:length(STplot)
    payoff(i) = total_payoff_AN(STplot(i),S0,N,p);
end
figure()
plot(STplot,payoff)
hold on
plot(STplot,N*ones(1,length(STplot)),'--','LineWidth',1)
plot(STplot,(N/S0)*STplot,'LineWidth',1)
xline(S0,'--')
xline(0.8*S0,'--')
legend({'total payoff of the offered AN at S_T','initial investment','direct investment in stocks','S0','Airbag level'},'FontSize',10)
hold off
xlabel('stock price S_T at maturity')
ylabel('total payoff at maturity')


%%Test differences between aim AN and bought options + bank account
ST = 0.5*S0;
calc = payoff_portfolio(N,N_puts,N_calls,StrikePut,StrikeCall,S0,A,ST);

if ST >= S0
   payoff = N + p*N/S0*(ST-S0);
elseif A <= ST
   payoff = N;
else
   payoff = (N/A)*ST;
end
difference = calc - payoff;
ratiodifferenceh_low = difference / N 

ST = 1.5*S0;
calc = payoff_portfolio(N,N_puts,N_calls,StrikePut,StrikeCall,S0,A,ST);

if ST >= S0
   payoff = N + p*N/S0*(ST-S0);
elseif A <= ST
   payoff = N;
else
   payoff = (N/A)*ST;
end
difference = calc - payoff;
ratiodifference_high = difference / N 

%% Plot differences between agreed payoff and portfolio
actual_product_payoff =  zeros(length(STplot),1);
for i = 1:length(STplot)
    actual_product_payoff(i) = payoff_portfolio(N,N_puts,N_calls,StrikePut,StrikeCall,S0,A,STplot(i));
end
figure()
plot(STplot,payoff)
hold on
plot(STplot,actual_product_payoff)
xline(S0,'--')
xline(0.8*S0,'--')
legend({'payoff agreed AN','payoff portfolio','S_0','0.8 S_0'},'FontSize',10)
hold off
xlabel('stock price S_T at maturity')
ylabel('total payoff at maturity')








 


