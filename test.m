%% Hello World
'Hello World'
% thats a comment

%% Matlab is easy
1 + 1

%% Simple Arithmetics
1/(2+3^2) + (4/5)*(6/7)

%% Predefined Stuff
pi * ans == inf
1+3*i

%% Semicolon
%ends a statement
a = 5.0;

%% Display formats
format short
x = pi
format long 
x
format longe
x

%% who
who
whos

%% User input
x = input('Give me a number ')

%% Useful Commands
%clear all
%clear
%clc
%help help
%help <>
s = 'Matlab is easy'

%% Vectors 
w = [1,2,3,4]  %row vector
v = [1; 2; 3; 4] %column vector
v == w'
x = 0:2:10
v(1:3)
v(3:end)

%% Matrices
A = [1 2 3;4 5 6;7 8 9]
% useful commands
%eye(m,n)
%eye(n)
%zeros(m,n)
%ones(m,n)
%rand(m,n)

%%Basic Matrix operations
B = A([2,1,3],:)
% useful commands
%max()
%min()
%mean()
%size()
%det()
%inv()
%diag

%%Elementwise operations
A * A
A .* A

%%Logical Expressions
%as always

%%find()
index = find(A>7);
A(index)
length(index)

%%Linear equations
A = [1 2 3; 4 5 6 ; 7 8 0];
b = [1;1;1];
format short
%Method 1:
x = A\b

%Method 2: 
x = inv(A)*b

%%Plots
% first simple plot
x = [1 2 3 4 5 6];
y = [3 -1 2 4 5 1];
plot(x,y,'k') %%black line
% adding titles and labels
x = [0:1/10:100]
y = sin(x)
plot(x,y,'r-o')
xlabel('x = 0:2\pi')
ylabel('Sine of x')
title('Sine function')
axis([0,2*pi,-1,1])

%% multiple graphs 
%Method 1:
%just repeating keywords in plot
%Method 2:
%hold on
%plot
%plot
%hold of

%subplots
x = 0:100;
y = x.^2;
yy = x.^3;
subplot(221), plot(x,y)
subplot(222), plot(x,yy)
subplot(223), plot(x,yy)
subplot(224), plot(x,y)

%% Programming in Matlab

%%if else
A = [10, 5, 2, 1];
limit = 5;
if any(A>limit)
    disp('1')
else
    disp('0')
end

%% loops for while works the same
for k = 1:length(A)
    A(k) = NaN
end

%% functions 
%function [outputArg1,outputArg2] = untitled3(inputArg1,inputArg2)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
%outputArg1 = inputArg1;
%outputArg2 = inputArg2;
%end
X = CostFunction(3,10)
CostFunction(-5,10)