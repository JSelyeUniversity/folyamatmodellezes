% Reaction-diffusion competition system
% Solves the PDE
global a1 a2 a3 a4 a5 a6 a7 a8 d1 d2 d3
a2=0.93; a3=0.1;
a4=0.19; a5=0.2;
a6=1; a7=0.05;
a8=0.2; d1=0.01;
d2=0.03; d3=0.009;
%a1=1.01;
a1=0.1;
m=0;
xmesh = linspace(0,3.14,45);
tspan = linspace(0,100,250);
sol = pdepe(m,@mbpde,@mbic,@mbbc,xmesh,tspan);
u1 = sol(:,:,1);
u2 = sol(:,:,2);
subplot(121)
surf(xmesh,tspan,u1)
xlabel('x', 'Fontsize', 12)
ylabel('t','Fontsize', 12)
title('u_1','FontSize', 16)
subplot(122)
surf(xmesh,tspan,u2)

xlabel('x','Fontsize', 12)
ylabel('t','Fontsize', 12)
title('u_2','FontSize', 16)
% -----------------------------------------------------------
% Alfüggvények
% -----------------------------------------------------------
function [c,f,s] = mbpde(x,t,u,DuDx)
  global a1 a2 a3 a4 a5 a6 a7 a8 d1 d2 d3
  c = [1; 1; 1];
  f = [d1; d2; d3] .* DuDx;
  s = [u(1)*(a1-a2*u(2)-a3*u(3)); u(2)*(a4-a5*u(3)); u(3)*(-a8+a6*u(1)+a7*u(2))];
end
% -----------------------------------------------------------
function u0 = mbic(x)
  u0 = [1; 1; 1];
end
 % ----------------------------------------------------------
function [pa,qa,pb,qb] = mbbc(xl,ul,xr,ur,t)
  pa = [0;0;0];
  qa = [1;1;1];
  pb = [0;0;0];
  qb = [1;1;1];
end