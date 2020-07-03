function [ a,b,c,d ] = NCSpline(x,a)
n = length(a);
c = zeros(1,n);
b = zeros(1,n);
d = zeros(1,n);
for i=1:n-1
    h(i) = x(i+1) - x(i);
end
for i=2:n-1
   al(i) = (3/h(i))*(a(i+1)-a(i)) - (3/h(i-1))*(a(i) - a(i-1)); 
end
l = zeros(1,n);
u = zeros(1,n);
z = zeros(1,n);
l(1) = 1;
u(1) = 0; 
z(1) = 0;    
for i=2:n-1
   l(i) = 2*(x(i+1) - x(i-1)) - h(i-1)*u(i-1); 
   u(i) = h(i)/l(i);
   z(i) = (al(i) -h(i-1)*z(i-1))/l(i);  
end
l(n) = 1;
z(n) = 0;
c(n) = 0;
for j=n-1:-1:1    
    c(j) = z(j)-u(j)*c(j+1);
    b(j)= ((a(j+1)-a(j))/h(j)) - (h(j)*(c(j+1) + 2*c(j)))/3;
    d(j) = (c(j+1)-c(j))/(3*h(j));
end
end
