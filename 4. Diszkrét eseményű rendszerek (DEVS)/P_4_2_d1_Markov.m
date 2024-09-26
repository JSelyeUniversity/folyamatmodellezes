clear all, close all, clc
% Markov-lánc Diszkrét eset
% 1 - átmenetek száma
% x - átmenet mátrix
% y - kezdeti értékek 
% y1 - eredmény
 
x = [0.8 0.2 0.1 
   0.1 0.7 0.3 
   0.1 0.1 0.6]
 
y = [0.40; 
   0.24; 
   0.36]
 
hold on
plot(0,y,'*r')
y1 = x * y
plot(1,y1,'*r')
hold off
