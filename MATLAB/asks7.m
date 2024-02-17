a=1;
b=2;
n=10; %diameriseis
dx=(b-a)/n
x=a:dx:b;
y=x.^2
T=0;
for i=1:n
    T=T+(dx/2)*(y(i)+y(i+1));
end
T

%epalithefsi lynoume symbolika
syms x
f=x^2;
Tex=int(f,a,b) %entolh ypologismou oloklhrwmatos


%etoimh diadikasia apo to matlab
x=linspace(a,b,11)
y=x.^2;
T=trapz(x,y)

%simpson prosoxi diameriseis zygos arithmos
a=1;
b=2;
n=10;
dx=(b-a)/n;
x=a:dx:b;
y=x.^2
T=0;
for i=1:2:n-1
    T=T+(dx/3)*(y(i)+4*y(i+1)+y(i+2))
end
    
    