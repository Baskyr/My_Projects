f=[1, 0, -6, 8];
fd=polyder(f);
xo=-3;
resultold=xo
for i=1:10
    fxo=polyval(f,xo);
    fdxo=polyval(fd,xo);
    x1=xo-(fxo/fdxo);
    xo=x1;fxo=polyval(f,xo);
    fdxo=polyval(fd,xo);
    x1=xo-(fxo/fdxo);
    xo=x1;
    result=xo
    err=abs((result-resultold)/result)*100
    resultold=result;
end
display(x1)
x=-5:0.0001:5;
y=polyval(f,x);
plot(x,y,'b')
hold on
 plot(result,0,'*')
    
display('========================')

    
    
f=@(x) x^3-6*x+8;
fd=@(x)3*x^2-6;
xo=-3;
resultold=xo;
sfalma=10;
while sfalma>0.00001
    fxo=feval(f,xo);
    fdxo=feval(fd,xo);
    x1=xo-(fxo/fdxo);
    xo=x1;
    fxo=feval(f,xo);
    fdxo=feval(fd,xo);
    x1=xo-(fxo/fdxo);
    xo=x1;
   result=xo
   sfalma=abs((result-resultold)/result)*100
   resultold=result;
end


    
    