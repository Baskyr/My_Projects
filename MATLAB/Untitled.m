clear,clc
g=tf([6.66],[1 3.33])
s=tf('s');
ki=21.621;
wn=12;
for zeta=0.6:0.1:1
    kp=(2*zeta*wn-3.33)/6.66
a=ki/kp;
cs=kp*(s+a)/s;
gcl=series(g,cs);
gcl=feedback(gcl,1);
step(gcl)
hold on
end
