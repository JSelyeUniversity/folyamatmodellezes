clear all, close all, clc
%Paraméterek
rule = 30;
 
rule_bin = dec2bin(rule);
rule_array = zeros(1,8);
for i=1:length(rule_bin)
  rule_array(i+8-length(rule_bin)) = str2num(rule_bin(i));
end
 
input_array = zeros(3,8); % 1 - bal, 2-elem, 3-jobb
 
A = zeros(1,50);
A(25) = 1;
 
l = length(A);
for i = 2:25
  for j = 2:l-1
    A(i,j) = inquiry(rule_array,A(i-1,j-1),A(i-1,j),A(i-1,j+1));
  end
  A(i,1) = inquiry(rule_array,A(i-1,l),A(i-1,j),A(i-1,j+1));
  A(i,l) = inquiry(rule_array,A(i-1,j-1),A(i-1,j),A(i-1,1));
end
 
%Grafika
clims = [0 1];
colorbar
colormap(flipud(gray))
 
imagesc(A,clims)
axis equal
axis([1.5 49.5 0.5 25.5])
ylabel('Generáció')
xticklabels({„})
h=gca; 
h.XAxis.TickLength = [0 0];
h.YAxis.TickLength = [0 0];
 
function new_state = inquiry(rule,i1,i2,i3)
  i = bin2dec(strcat(num2str(i1),num2str(i2),num2str(i3)));
  new_state = rule(8-i);
end
