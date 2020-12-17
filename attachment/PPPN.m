%% Example
N = 850;
S0 = 85;
K1 = 60;
K2 = 110;
r = 0.0011;
T = 14/12;

%% Example plot
ST = 0*S0:2*S0;
payoff100ex = total_payoff_PPPN(2*S0,K1,K2,S0,S0)
payoff = zeros(length(ST),1);

for i = 1:length(ST)
    payoff(i) = total_payoff_PPPN(ST(i),K1,K2,S0,N);
end
figure()
plot(ST,payoff)
hold on
plot(ST,N*ones(1,length(ST)),'--','LineWidth',1)
plot(ST,(N/S0)*ST,'LineWidth',1)
xline(S0,'--')
legend({'total payoff of the PPPN at S_T','initial investment','direct investment in stocks','S0'},'FontSize',10)
hold off
xlabel('stock price S_T at maturity')
ylabel('total payoff at maturity')

%%Concrete Product
S0 = 85.35;
N = 10*S0;
K1 = 40;
ask1 = 1.5;
ask2 = 6.95;
K2 = 130;
r = 0.0011;
T = 14/12;

%% check for enough money
fixed = 0.9*N*exp(-r*T)
investable = N-fixed
profit = investable - ask1*(N/S0) - ask2*(N/S0)

%% Payoff for 100% up
payoff100 = total_payoff_PPPN(2*S0,K1,K2,S0,N)


%% Plot concrete product
ST = 0.1*S0:2.5*S0;

payoff = zeros(length(ST),1);

for i = 1:length(ST)
    payoff(i) = total_payoff_PPPN(ST(i),K1,K2,S0,N);
end
figure()
plot(ST,payoff)
hold on
plot(ST,N*ones(1,length(ST)),'--','LineWidth',1)
plot(ST,(N/S0)*ST,'LineWidth',1)
xline(S0,'--')
legend({'total payoff of the PPPN at S_T','initial investment','direct investment in stocks','S0'},'FontSize',10)
hold off
xlabel('stock price S_T at maturity')
ylabel('total payoff at maturity')


