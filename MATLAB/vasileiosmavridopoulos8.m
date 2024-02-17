t=0:0.5:5
km=[0.2 80 160 200 230 270 310 340 380 460 530]
t1=0.75
dt=0.7
plot(t,km,'-*','MarkerEdgeColor','r')
a=polyfit(t,km,3)
f1=polyval(a,t1+dt)
f2=polyval(a,t1)
f3=polyval(a,t1-dt)
FDD=(f1-f2)/dt
BDD=(f2-f3)/dt
CDD=(f1-f3)/(2*dt)
u=polyder(a)
ut=polyval(u,t1)
err_fdd=abs((ut-FDD)/ut)*100
err_bdd=abs((ut-BDD)/ut)*100
err_cdd=abs((ut-CDD)/ut)*100

t=0:0.5:5
km=[0.2 80 160 200 230 270 310 340 380 460 530]
t2=3.1
dt=0.7
plot(t,km,'-*','MarkerEdgeColor','r')
a=polyfit(t,km,3)
f1=polyval(a,t2+dt)
f2=polyval(a,t2)
f3=polyval(a,t2-dt)
FDD=(f1-f2)/dt
BDD=(f2-f3)/dt
CDD=(f1-f3)/(2*dt)
u=polyder(a)
ut=polyval(u,t2)
err_fdd=abs((ut-FDD)/ut)*100
err_bdd=abs((ut-BDD)/ut)*100
err_cdd=abs((ut-CDD)/ut)*100

t=0:0.5:5
km=[0.2 80 160 200 230 270 310 340 380 460 530]
t3=4.25
dt=0.7
plot(t,km,'-*','MarkerEdgeColor','r')
a=polyfit(t,km,3)
f1=polyval(a,t3+dt)
f2=polyval(a,t3)
f3=polyval(a,t3-dt)
FDD=(f1-f2)/dt
BDD=(f2-f3)/dt
CDD=(f1-f3)/(2*dt)
u=polyder(a)
ut=polyval(u,t3)
err_fdd=abs((ut-FDD)/ut)*100
err_bdd=abs((ut-BDD)/ut)*100
err_cdd=abs((ut-CDD)/ut)*100

t=0:0.5:5
km=[0.2 80 160 200 230 270 310 340 380 460 530]
t1=0.75
dt=0.1
plot(t,km,'-*','MarkerEdgeColor','r')
a=polyfit(t,km,3)
f1=polyval(a,t1+dt)
f2=polyval(a,t1)
f3=polyval(a,t1-dt)
FDD=(f1-f2)/dt
BDD=(f2-f3)/dt
CDD=(f1-f3)/(2*dt)
u=polyder(a)
ut=polyval(u,t1)
err_fdd=abs((ut-FDD)/ut)*100
err_bdd=abs((ut-BDD)/ut)*100
err_cdd=abs((ut-CDD)/ut)*100

t=0:0.5:5
km=[0.2 80 160 200 230 270 310 340 380 460 530]
t2=3.1
dt=0.1
plot(t,km,'-*','MarkerEdgeColor','r')
a=polyfit(t,km,3)
f1=polyval(a,t2+dt)
f2=polyval(a,t2)
f3=polyval(a,t2-dt)
FDD=(f1-f2)/dt
BDD=(f2-f3)/dt
CDD=(f1-f3)/(2*dt)
u=polyder(a)
ut=polyval(u,t2)
err_fdd=abs((ut-FDD)/ut)*100
err_bdd=abs((ut-BDD)/ut)*100
err_cdd=abs((ut-CDD)/ut)*100

t=0:0.5:5
km=[0.2 80 160 200 230 270 310 340 380 460 530]
t3=4.25
dt=0.1
plot(t,km,'-*','MarkerEdgeColor','r')
a=polyfit(t,km,3)
f1=polyval(a,t3+dt)
f2=polyval(a,t3)
f3=polyval(a,t3-dt)
FDD=(f1-f2)/dt
BDD=(f2-f3)/dt
CDD=(f1-f3)/(2*dt)
u=polyder(a)
ut=polyval(u,t3)
err_fdd=abs((ut-FDD)/ut)*100
err_bdd=abs((ut-BDD)/ut)*100
err_cdd=abs((ut-CDD)/ut)*100



a=0;
b=2;
dx1=(b-a)/1
dx2=(b-a)/2
dx4=(b-a)/4
dx8=(b-a)/8
x1=a:dx1:b
x2=a:dx2:b
x4=a:dx4:b
x8=a:dx8:b
u1=x1.*exp(-x1.^2)
u2=x2.*exp(-x2.^2)
u4=x4.*exp(-x4.^2)
u8=x8.*exp(-x8.^2)
k=1
I11=trapz(x1,u1)
I12=trapz(x2,u2)
I13=trapz(x4,u4)
I14=trapz(x8,u8)
k=2
I21=I12+(I12-I11)/(4^(k-1)-1)
I22=I13+(I13-I12)/(4^(k-1)-1)
I23=I14+(I14-I13)/(4^(k-1)-1)
k=3
I31=I22+(I22-I21)/(4^(k-1)-1)
I32=I23+(I23-I22)/(4^(k-1)-1)
k=4
I41=I32+(I32-I31)/(4^(k-1)-1)