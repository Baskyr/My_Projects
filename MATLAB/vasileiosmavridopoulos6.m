x=linspace(0,16,120)
f=sin(x)./(x+eps)
plot(x,f)
hold on
p1=polyfit(x,f,1)
x1=0:2:16
f1=sin(x1)./(x1+eps)
x1f1=[x1' f1']
plot (x1,f1,'r*') 
p=polyfit(x1,f1,1)
y=polyval(p,x1)
plot(x1,y)
p1=polyfit(x1,f1,2)
y1=polyval(p1,x1)
plot(x1,y1)
p2=polyfit(x1,f1,4)
y2=polyval(p2,x1)
plot(x1,y2)
