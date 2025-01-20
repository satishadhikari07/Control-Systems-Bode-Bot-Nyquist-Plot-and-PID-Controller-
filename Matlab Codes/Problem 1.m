clc
clear all
num=[10 10 5]
den=conv([1 1],[1 12])
sys1=tf(num,den)
ltiview(sys1)
grid
[Gm, Pm, pcf, gcf]=margin(sys1)
mag=20*log10(Gm)
margin(sys1)
