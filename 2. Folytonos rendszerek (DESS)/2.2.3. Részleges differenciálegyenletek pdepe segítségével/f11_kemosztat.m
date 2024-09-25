function chemostat
% Reakció-diffúziós kemosztát rendszer
% PDE megoldására
global a1 a2 m1 m2 d1 d2 d3 s0
d1=1;d2=1; d3=1;s0=1.;
a1=1; a2=1; m1=4; m2=1;
m=0;
xmesh = linspace(0,3.14,45);
tspan = linspace(0,10,50);
sol = pdepe(m,@mbpde,@mbic,@mbbc,xmesh,tspan);
u1 = sol(:,:,1);
u2 = sol(:,:,2);
u3 = sol(:,:,3);
subplot(131)
surf(xmesh,tspan,u1)
xlabel('x', 'Fontsize', 12)
ylabel('t','Fontsize', 12)
title('u_1','FontSize', 16)
subplot(132)
surf(xmesh,tspan,u2) 
xlabel('x','Fontsize', 12)
ylabel('t','Fontsize', 12)
title('u_2','FontSize', 16)
subplot(133)
surf(xmesh,tspan,u3)
xlabel('x','Fontsize', 12)
ylabel('t','Fontsize', 12)
title('u_3','FontSize', 16)
end

% --------------------Alfüggvények
function [c,f,s] = mbpde(x,t,u,DuDx)
global a1 a2 m1 m2 d1 d2 d3 s0
c=[1;1;1];
f = [d1;d2;d3].*DuDx;
s = [-m1*u(1)*u(2)/(a1+u(1))-m2*u(1)*u(3)/(a2+u(1)); m1*u(1)*u(2)/(a1+u(1)); m2*u(1)*u(3)/(a2+u(1))-s0*u(3)];
end

function u0 = mbic(x)
u0 = [1;1;1];
end

function [pa,qa,pb,qb] = mbbc(xa,ua,xb,ub,t)
global a1 a2 m1 m2 d1 d2 d3 s0
pa = [s0;0;0];
qa = [1;1;1];
pb = [ub(1);ub(2);ub(3)];
qb = [1;1;1];
end