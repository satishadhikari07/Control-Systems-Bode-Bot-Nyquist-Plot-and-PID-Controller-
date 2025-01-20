clc
clear all
num=0.01;
den=conv([1 0],conv([0.5 1],[0.01 0.1]));
Gs=tf(num,den)
Hs=0.01;
sys1=feedback(Gs,Hs)

kp=100;
p_contr=feedback(kp*sys1,1)
figure
step(p_contr)

kp=1
ki=0.8
kd=1.5
contr=tf([kd kp ki],[1 0]);
pid_contr=feedback(contr*sys1,1)
figure
step(pid_contr)





