clear all, close all, clc
 
width = 80;
height = 80;
A = zeros(width,height);
N = 500; 
pos = [width/2,height/2];
dir = 4;
 
for i=1:N
  ii = 0;
  jj = 0;
  if dir == 1 
    ii = 1;
  elseif dir == 2
    jj = -1;
  elseif dir == 3
    ii = -1;
  else
    jj = 1;
  end
  
  if A(pos(1)+ii,pos(2)+jj)==1
    dir = dir + 1;
    if dir == 5
      dir = 1;
    end
    A(pos(1)+ii,pos(2)+jj) = 0;
  else
    dir = dir - 1;
    if dir == 0
      dir = 4;
    end
    A(pos(1)+ii,pos(2)+jj) = 1;
  end
  pos(1) = pos(1)+ii;
  pos(2) = pos(2)+jj; 
end
 
%Graphic
clims = [0 1];
colorbar
colormap(flipud(gray))
imagesc(A,clims)
axis equal
axis([0 width 0 height])
