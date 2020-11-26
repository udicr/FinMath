%% Example
N = 850;
S0 = 85;
p = 0.6;
r = 0.0011;
T = 14/12;

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
hold off
xlabel('stock price S_T at maturity')
ylabel('total payoff at maturity')