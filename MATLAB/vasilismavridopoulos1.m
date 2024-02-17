%ΠΡΩΤΗ ΣΥΝΑΡΤΗΣΗ
xs=1;
xb=2;
resultold=0;
f=[3,0,-2,0,6,-8];
for i=1:16;
    display('epanalypsh')
    display (i)
    xm=(xs+xb)/2
    fxs=polyval(f,xs);
    fxb=polyval(f,xb);
    fxm=polyval(f,xm);
    if(fxm==0)
        display('brethike riza kai einai h')
        fxm
    end
    if (fxm*fxs<0)
       xb=xm;
       result=xb
        
    else
        xs=xm;
       result=xs
    end
    
   sfalma=abs((result-resultold)/result)*100
   resultold=result;
 
   
end

    x=-1:0.0001:2;
    y=polyval(f,x);
    subplot(211)
    plot(x,y)
    hold on
    plot(result,0,'*')
  %ΔΕΥΤΕΡΗ ΣΥΝΑΡΤΗΣΗ  
e=2.71828182846;
f=@(x) x*e^x-x^2-4
xs=1;
xb=2;
sfalma=1;
while sfalma>0.00001
    xm=(xs+xb)/2;
    fxs=f(xs);
    fxb=f(xb);
    fxm=f(xm);
    if(fxm*fxs<0)
        xb=xm;
        result=xm
    else
        xs=xm;
        result=xs
    end
    sfalma=abs((result-resultold)/result)*100
   resultold=result;
end
subplot(212);
fplot(f)
hold on
    plot(result,0,'*')
    
   