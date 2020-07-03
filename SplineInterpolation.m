% Clamped spline
clear all;
X1 = [1,2,5,6,7,8,10,13,17];
X2 = [17,20,23,24,25,27,27.7];
X3 = [27.7,28,29,30];
F1 = [3,3.7,3.9,4.2,5.7,6.6,7.1,6.7,4.5];
F2 = [4.5,7.0,6.1,5.6,5.8,5.2,4.1];
F3 = [4.1,4.3,4.1,3.0];
[a1,b1,c1,d1] = NCSpline(X1,F1);
[a2,b2,c2,d2] = NCSpline(X2,F2);
[a3,b3,c3,d3] = NCSpline(X3,F3);
 N1 =length(X1);
 N2 =length(X2);
 N3 =length(X3);
T = 0.1;
figure;
hold on;
for j=1:N1-1
    syms x;
    FUNC1= a1(j) + b1(j)*(x -X1(j)) + c1(j)*(x-X1(j))^2 + d1(j)*(x-X1(j))^3;
    SUM1=1;
    for x_coor=X1(j):T:X1(j+1)
        s_x_coor(SUM1)=x_coor;
        s_y_coor(SUM1)=vpa(subs(FUNC1,x,x_coor));
        SUM1=SUM1+1;
    end
    FUNC1=0;
    plot(s_x_coor,s_y_coor,'r');
    s_x_coor=0;
    s_y_coor=0;
end
for j=1:N2-1
    syms x;
    FUNC2= a2(j) + b2(j)*(x -X2(j)) + c2(j)*(x-X2(j))^2 + d2(j)*(x-X2(j))^3;
    SUM2=1;
    for x2_coor=X2(j):T:X2(j+1)
        s_x_coor2(SUM2)=x2_coor;
        s_y_coor2(SUM2)=vpa(subs(FUNC2,x,x2_coor));
        SUM2=SUM2+1;
    end
    FUNC2=0;
    
    plot(s_x_coor2,s_y_coor2,'r');
    s_x_coor2=0;
    s_y_coor2=0;
end
for j=1:N3-1
    syms x;
    FUNC3= a3(j) + b3(j)*(x -X3(j)) + c3(j)*(x-X3(j))^2 + d3(j)*(x-X3(j))^3;
    SUM3=1;
    for x3_coor=X3(j):.1:X3(j+1)
        s_x_coor3(SUM3)=x3_coor;
        s_y_coor3(SUM3)=vpa(subs(FUNC3,x,x3_coor));
        SUM3=SUM3+1;
    end
    FUNC3=0;
    plot(s_x_coor3,s_y_coor3,'r');
    s_x_coor3=0;
    s_y_coor3=0;
end
hold off;
% Natural spline
clear all;
X1 = [1,2,5,6,7,8,10,13,17];
X2 = [17,20,23,24,25,27,27.7];
X3 = [27.7,28,29,30];
F1 = [3,3.7,3.9,4.2,5.7,6.6,7.1,6.7,4.5];
F2 = [4.5,7.0,6.1,5.6,5.8,5.2,4.1];
F3 = [4.1,4.3,4.1,3.0];
fo1 = 1.0;
Fo1 = -.67;
fo2 = 3.0;
Fo2 = -4.0;
fo3 = .33;
Fo3 = -1.5;
[a11,b11,c11,d11] = CCSpline(X1,F1,fo1,Fo1);
[a22,b22,c22,d22] = CCSpline(X2,F2,fo2,Fo2);
[a33,b33,c33,d33] = CCSpline(X3,F3,fo3,Fo3);
N1 =length(X1);
N2 =length(X2);
N3 =length(X3);
T = 0.1;
figure;
hold on;
for j=1:N1-1
    syms x;
    FUNC1= a11(j) + b11(j)*(x -X1(j)) + c11(j)*(x-X1(j))^2 + d11(j)*(x-X1(j))^3;
    SUM1=1;
    for x_coor=X1(j):T:X1(j+1)
        s_x_coor(SUM1)=x_coor;
        s_y_coor(SUM1)=vpa(subs(FUNC1,x,x_coor));
        SUM1=SUM1+1;
    end
    FUNC1=0;
    plot(s_x_coor,s_y_coor,'g');
    s_x_coor=0;
    s_y_coor=0;
end
for j=1:N2-1
    syms x;
    FUNC2= a22(j) + b22(j)*(x -X2(j)) + c22(j)*(x-X2(j))^2 + d22(j)*(x-X2(j))^3;
    SUM2=1;
    for x2_coor=X2(j):T:X2(j+1)
        s_x_coor2(SUM2)=x2_coor;
        s_y_coor2(SUM2)=vpa(subs(FUNC2,x,x2_coor));
        SUM2=SUM2+1;
    end
    FUNC2=0;
    plot(s_x_coor2,s_y_coor2,'g');
    s_x_coor2=0;
    s_y_coor2=0;
end
for j=1:N3-1
    syms x;
    FUNC3= a33(j) + b33(j)*(x -X3(j)) + c33(j)*(x-X3(j))^2 + d33(j)*(x-X3(j))^3;
    SUM3=1;
    for x3_coor=X3(j):.1:X3(j+1)
        s_x_coor3(SUM3)=x3_coor;
        s_y_coor3(SUM3)=vpa(subs(FUNC3,x,x3_coor));
        SUM3=SUM3+1;
    end
    FUNC3=0;
    plot(s_x_coor3,s_y_coor3,'g');
    s_x_coor3=0;
    s_y_coor3=0;
end
hold off;
