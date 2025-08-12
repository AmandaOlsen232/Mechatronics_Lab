close all
clear all
clc

% k_dc = 5;
% Tc = 10;
% s = tf('s');
% G = k_dc/(Tc*s + 1) %first order system
% step(G)
% stepinfo(G)

k_dc = 1;
w_n = 10;
zeta = 0;

s = tf('s');
G1 = k_dc*w_n^2/(s^2 + 2*zeta*w_n*s + w_n^2); %second order system
step(G1)
linearSystemAnalyzer('step', G1)
axis([0 3 0 2])
stepinfo(G1)

%%
clear all
close all
clc

s = tf('s');
P = 1/(s^2 + 10*s + 20);
pidTuner(P, 'p')
