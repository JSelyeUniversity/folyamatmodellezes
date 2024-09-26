clear all, close all, clc
 
A = zeros(50,50);
l = height(A);
h = length(A);
N = 20;
B = A;
 
X = [25,25,26,27,27,28,29,29,35,35,36,35];
Y = [25,26,25,26,28,29,29,28,33,34,34,35];
 
for i = 1:length(X)
  A(X(i),Y(i)) = 1;
end
 
plot(A)
 
for k = 1:N
  for i = 2:l-1
    for j = 2:h-1
      B(i,j) = A(i,j);
      count = calcNeighbor(A,i,j);
      if A(i,j) == 2
        B(i,j) = 0;
      elseif A(i,j) == 1
        B(i,j) = 2;
      elseif A(i,j) == 0 && count == 2
        B(i,j) = 1;
      end
    end
  end
  
  A = B;
  plot(A);  
end
 
function piece = calcNeighbor(A,x,y)
  piece = 0;
  for i = -1:1
    for j = -1:1
      piece = piece + A(x+i,j+y);
    end
  end
  piece = piece - A(x,y);
end
 
function plot(A)
  clims = [0 1];
  colorbar
  colormap gray
  imagesc(A,clims)
  pause(0.1)
end 