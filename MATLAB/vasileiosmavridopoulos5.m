x=linspace(0,2*pi,120)
f=sin(x).^5
a=interp1(x,f,pi/8,'nearest')
A=sin(pi/8)^5;
fprintf('To apotelesma gia x=pi/8 einai:%4.13f \n',A)
b=interp1(x,f,pi/4,'linear')
B=sin(pi/4)^5;
fprintf('To apotelesma gia x=pi/4 einai:%4.13f \n',B)
c=interp1(x,f,3*pi/5,'cubic')
C=sin(3*pi/5)^5;
fprintf('To apotelesma gia x=3pi/5 einai:%4.13f \n',C)
d=interp1(x,f,3*pi/7,'spline')
D=sin(3*pi/7)^5;
fprintf('To apotelesma gia x=3pi/7 einai:%4.13f \n',D)
subplot(2,2,1)
plot(x,f)
hold on
title('nearest graph');
xlabel('X');
ylabel('SIN(X)^5')
grid
plot(pi/8,a,'*')
subplot(2,2,2)
plot(x,f)
hold on
title('linear graph');
xlabel('X');
ylabel('SIN(X)^5')
grid
plot(pi/4,b,'*')
subplot(2,2,3)
plot(x,f)
hold on
title('cubic graph')
xlabel('X');
ylabel('SIN(X)^5')
grid
plot(3*pi/5,c,'*')
subplot(2,2,4)
plot(x,f)
hold on
title('spline graph');
xlabel('X');
ylabel('SIN(X)^5')
grid
plot(3*pi/7,d,'*')