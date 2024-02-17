%κανόνας του τραπεζίου 5 διαμερίσεις.
a=0;
b=2;
n=5;
dx=(b-a)/n;
x=a:dx:b
y=exp(-x.^2)
EMB=0;
for i=1:n
    EMB=EMB+(dx/2)*(y(i)+y(i+1));
end
EMB
clear
%κανόνας του simpson 10 διαμερίσεις.
a=0;
b=2;
n=10;
dx=(b-a)/n;
x=a:dx:b;
y=exp(-x.^2)
EMB=0;
for i=1:2:n-1
    EMB=EMB+(dx/3)*(y(i)+4*y(i+1)+y(i+2));
end
EMB
clear
%κανόνας του simpson 20 διαμερίσεις.
a=0;
b=2;
n=20;
x=linspace(a,b,n+1)
y=exp(-x.^2)
dx=(b-a)/n;
EMB=0;
for i=1:2:n-1
    EMB=EMB+(dx/3)*(y(i)+4*y(i+1)+y(i+2));
end
EMB
clear
%λύση με την εντολή int.
a=0;
b=2;
syms x;
f=exp(-x.^2);
emb=int(f,a,b);
emb
clear
%κανόνας τραπεζίου του MATLAB για 20 διαμερίσεις.
a=0;
b=2;
x=linspace(a,b,21)
y=exp(-x.^2)
EMB=trapz(x,y)
plot(x,y)
