function [ cost ] = CostFunction(n, price)
%calculates total price of n goods
if (n >= 0)
    cost = n*price;
else 
    cost = NaN;
    disp('The fuck')
end

