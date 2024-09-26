clear all, close all, clc
% Markov-lánc Diszkrét eset
% N - átmenetek száma
% x - átmenet mátrix
% y - kezdeti értékek és eredmény
 
x = [0.8 0.2 0.1 
   0.1 0.7 0.3 
   0.1 0.1 0.6]
 
y = [0.40; 
   0.24; 
   0.36]
 
N = 9;
hold on
 
for i = 0:1:N  
  plot(i,y(1),'.r','MarkerSize',20)
  plot(i,y(2),'.g','MarkerSize',20)
  plot(i,y(3),'.b','MarkerSize',20)
  y = x*y
end
hold off