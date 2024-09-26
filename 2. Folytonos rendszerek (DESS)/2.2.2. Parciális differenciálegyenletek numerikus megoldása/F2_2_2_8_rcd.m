function rcd
  %RCD Stiff ODE from method of lines on reaction-diffusion
  %problem.
  N = 20; a = 1;h=1/(N-1);d=.01;r=3;K=100;
  A=zeros(N,N);
  A(2,1)=1;
  A(N-1,N)=1;
  for i=2:N-1
    A(i,i)=-2;
  end
  for i=2:N-2
    A(i+1,i)=1;
    A(i,i+1)=1;
  end
  A=d/h^2*A;
  tspace =[0 5]; space = [1:N]/(N-1);
  y0 = 0.5*(1+cos(2*pi*space));
  y0 = y0(:); y0(1)=0;y0(N)=0; %Dirichlet peremfeltétel
  [t,y] = ode45(@f,tspace,y0);
  waterfall(t,[0:1/(N-1):1],y')
  xlabel('Idő','FontSize',16), 
  ylabel('Tér','FontSize',16)
  % ---------------------- Beágyazott függvények -----------
  function dydt = f(t,y)
  %F  differenciál függvény.
  dydt = A*y+r*y.*(1-y/K);
  dydt(1)=0;dydt(N)=0;
  end 
end