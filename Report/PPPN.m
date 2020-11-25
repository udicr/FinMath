%% Example
N = 850;
S0 = 85;
K1 = 80;
K2 = 90;
r = 0.0011;
T = 14/12;


ST = 0.5*S0:1.5*S0;

payoff = zeros(length(ST),1);

for i = 1:length(ST)
    payoff(i) = total_payoff_PPPN(ST(i),K1,K2,S0,N);
end
figure()
plot(ST,payoff)
hold on
plot(ST,N*ones(1,length(ST)),'--','LineWidth',1)
plot(ST,(N/S0)*ST,'LineWidth',1)
plot(S0,N,'*')
legend({'total payoff of the PPPN at S_T','initial investment','direct investment in stocks','S0'},'FontSize',10)
hold off
xlabel('stock price S_T at maturity')
ylabel('total payoff at maturity')
