clc
clear all
num=0.01
den=0.01+conv([0.5 1],[0 0.01 0.1])
sys1=tf(num,den)

