g=tf([6.66],[1 3.33 0])
wn=5;
kp=3.75;
s=tf('s');
for zeta=0.9:0.1:0.9
kd=(2*zeta*wn-3.33)/6.66
ts=kp+kd*s;
gcl=series(ts,g);
gcl=feedback(gcl,1)
step(gcl)
    hold on
end