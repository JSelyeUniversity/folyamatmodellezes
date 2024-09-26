clear all, close all, clc

% 0 - Gyógyult/Halott (R)
% 1 - Érzékeny (S)
% 2 - Fertőzött (I)
 
A = ones(50,50);
l = height(A);
h = length(A);
N = 20;
B = A;
 
X = [25,25,26,27,27,44,44,45]; 
Y = [25,26,25,26,28,45,44,45];
 
for i = 1:length(X)
  A(X(i),Y(i)) = 2;
end
 
plot(A)
 for k = 1:N
  for i = 2:l-1
    for j = 2:h-1
      B(i,j) = A(i,j);
      count = calcNeighbor(A,i,j);
      if A(i,j)==1 && count >= 2
        B(i,j) = 2;
      elseif A(i,j) == 2 && count <= 4
        B(i,j) = 0;
      end
    end
  end
  
  A = B;
  plot(A);  
  pause(0.1);
end

 
function piece = calcNeighbor(A,x,y)
  piece = 0;
  for i = -1:1
    for j = -1:1
      if A(x+i,j+y) == 2 
        piece = piece + 1;
      end
    end
  end
  if A(x,j) == 2
    piece = piece - 1;
  end
end
 
function plot(A)
  clims = [0 2];
  colorbar
  colormap cool
  imagesc(A,clims)
  pause(0.1)
end 
