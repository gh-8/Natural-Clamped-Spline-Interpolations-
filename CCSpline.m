function [ a,b,c,d ] = CCSpline( x,a,FPO,FPN )
n = length(a);
c = zeros(1,n);
b = zeros(1,n);
d = zeros(1,n);
al= [];
for i=1:n-1
h(i) = x(i+1) - x(i);
al(1) =3*(a(2)-a(1))/h(1) -3*FPO;
end
al(n) = 3*FPN -3*(a(n)-a(n-1))/h(n-1);
for i=2:n-1
   al(i) = (3/h(i))*(a(i+1)-a(i)) - ((3/(h(i-1)))*(a(i) - a(i-1)));
end
l = zeros(1,n);
u = zeros(1,n);
z = zeros(1,n);
l(1) = 2*h(1);
u(1) = 0.5;
z(1) = al(1)/l(1);
for i=2:n-1
    
    l(i) = 2*(x(i+1)-x(i-1)) - h(i-1)*u(i-1);
    u(i) = h(i)/l(i);
    z(i) = (al(i) - h(i-1) * z(i-1))/l(i);
end
l(n) = h(n-1)*(2-u(n-1));
z(n) = (al(n) - h(n-1)*z(n-1))/l(n);
c(n) = z(n);
for j=n-1:-1:1
   c(j)= z(j) - u(j)*c(j+1);
   b(j)= ((a(j+1)-a(j))/h(j)) - (h(j)*(c(j+1) + 2*c(j)))/3;
   d(j)= (c(j+1) - c(j))/(3*h(j)); 
end
end
