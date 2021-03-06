%% Ex1
a = 5;
x = 2;
y = 8;
z = exp(-a)*sin(x)+10*sqrt(y)

%%Ex2
A = rand(3,4)
element1 = A(1,2)
column3 = A(:,3)
row1 = A(1,:)
pair1 = A(2,3:4)

%%Ex3
C = eye(3)*5;
C(2,2) = 3

%%Ex4
M = [1 -1 3; 4 8 -2; 0 5 -9];
x1 = M(1,:);
y = M(2:3,:);
s = zeros(1,3);
for j = 1:3
   s(j) = sum(M(:,j));
end
s
sum(M)
elements = sum(sum(M))
index = find(abs(M)==max(max(abs(M))))
max(max(abs(M)))

x = inv(M) * [1,3,2]'
x = M\[1;3;2]

index = find(M<0);
M(index)=0

%%Ex5
for i=0:20
    if mod(i,2)==0
        str = sprintf('%i even', i)
    else
        str = sprintf('%i odd',i)
    end
end

%%Ex6
N = 100;
ExpValue(N)
