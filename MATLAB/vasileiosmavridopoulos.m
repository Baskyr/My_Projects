%% Euler και Runge-Kutta για 2 διαμερίσεις 
xo=1;
yo=1;
xn=1.5;
n=2;
h1=(xn-xo)/n;
x=[xo:h1:xn]';
y1=zeros(n+1,1);
y1(1)=yo;
%EULER
for i=1:n
    fi=(x(i)*y1(i)+x(i)^4*exp(x(i)))/x(i)^2;
    y1(i+1)=y1(i)+fi*h1;
end
yr1=zeros(n+1,1);
yr1(1)=yo;
%Runge-Kutta
for i=1:n
    k1=(x(i)*yr1(i)+x(i)^4*exp(x(i)))/x(i)^2;
    xnext=x(i)+h1;
    ynext=yr1(i)+k1*h1;
    k2=(xnext*ynext+xnext^4*exp(xnext))/xnext^2;
    yr1(i+1)=yr1(i)+(1/2*k1+1/2*k2)*h1;
end
disp('αποτελέσματα απο Euler'),(y1)
disp('αποτελέσματα απο Runge-Kutta'),(yr1)
%% Euler  για 4 διαμερίσεις
xo=1;
yo=1;
xn=1.5;
n=4;
h2=(xn-xo)/n;
x=[xo:h2:xn]';
y2=zeros(n+1,1);
y2(1)=yo;

for i=1:n
    fi=(x(i)*y2(i)+x(i)^4*exp(x(i)))/x(i)^2;
    y2(i+1)=y2(i)+fi*h2;
end
plot(x,y2,'r--')
hold
yr2=zeros(n+1,1);
yr2(1)=yo;
%Runge-Kutta
for i=1:n
    k1=(x(i)*yr2(i)+x(i)^4*exp(x(i)))/x(i)^2;
    xnext=x(i)+h2;
    ynext=yr2(i)+k1*h2;
    k2=(xnext*ynext+xnext^4*exp(xnext))/xnext^2;
    yr2(i+1)=yr2(i)+(1/2*k1+1/2*k2)*h2;
end
plot(x,yr2,'b')
disp('αποτελέσματα απο Euler'),(y2)
disp('αποτελέσματα απο Runge-Kutta'),(yr2)
%% Euler και Runge-Kutta για 10 διαμερίσεις
xo=1;
yo=1;
xn=1.5;
n=10;
h3=(xn-xo)/n;
x=[xo:h3:xn]';
y3=zeros(n+1,1);
y3(1)=yo;

for i=1:n
    fi=(x(i)*y3(i)+x(i)^4*exp(x(i)))/x(i)^2;
    y3(i+1)=y3(i)+fi*h3;
end
yr3=zeros(n+1,1);
yr3(1)=yo;
%Runge-Kutta
for i=1:n
    k1=(x(i)*yr3(i)+x(i)^4*exp(x(i)))/x(i)^2;
    xnext=x(i)+h3;
    ynext=yr3(i)+k1*h3;
    k2=(xnext*ynext+xnext^4*exp(xnext))/xnext^2;
    yr3(i+1)=yr3(i)+(1/2*k1+1/2*k2)*h3;
end
disp('αποτελέσματα απο Euler'),(y3)
disp('αποτελέσματα απο Runge-Kutta'),(yr3)
%% Euler και Runge-Kutta για 100 διαμερίσεις
xo=1;
yo=1;
xn=1.5;
n=100;
h4=(xn-xo)/n;
x=[xo:h4:xn]';
y4=zeros(n+1,1);
y4(1)=yo;
%EULER
for i=1:n
    fi=(x(i)*y4(i)+x(i)^4*exp(x(i)))/x(i)^2;
    y4(i+1)=y4(i)+fi*h4;
end
yr4=zeros(n+1,1);
yr4(1)=yo;
%Runge-Kutta
for i=1:n
    k1=(x(i)*yr4(i)+x(i)^4*exp(x(i)))/x(i)^2;
    xnext=x(i)+h4;
    ynext=yr4(i)+k1*h4;
    k2=(xnext*ynext+xnext^4*exp(xnext))/xnext^2;
    yr4(i+1)=yr4(i)+(1/2*k1+1/2*k2)*h4;
end
disp('αποτελέσματα απο Euler'),(y4)
disp('αποτελέσματα απο Runge-Kutta'),(yr4)
%% Euler και Runge-Kutta για 1000 διαμερίσεις
xo=1;
yo=1;
xn=1.5;
n=1000;
h5=(xn-xo)/n;
x=[xo:h5:xn]';
y5=zeros(n+1,1);
y5(1)=yo;
%EULER
for i=1:n
    fi=(x(i)*y5(i)+x(i)^4*exp(x(i)))/x(i)^2;
    y5(i+1)=y5(i)+fi*h5;
end
yr5=zeros(n+1,1);
yr5(1)=yo;
%Runge-Kutta
for i=1:n
    k1=(x(i)*yr5(i)+x(i)^4*exp(x(i)))/x(i)^2;
    xnext=x(i)+h5;
    ynext=yr5(i)+k1*h5;
    k2=(xnext*ynext+xnext^4*exp(xnext))/xnext^2;
    yr5(i+1)=yr5(i)+(1/2*k1+1/2*k2)*h5;
end
disp('αποτελέσματα απο Euler'),(y5)
disp('αποτελέσματα απο Runge-Kutta'),(yr5)
PINAKAS=[h1,y1(end,1),yr1(end,1);h2,y2(end,1),yr2(end,1);h3,y3(end,1),yr3(end,1);h4,y4(end,1),yr4(end,1);h5,y5(end,1),yr5(end,1)]