%PDE model carasius with time delay
function PDE_Delay
  N = 18; a = 1; b = 5e-2;
  tspan = [0 40.]; space = [1:N]/(N+1);
  x10 = 0.5*(1+cos(2*pi*space));
  x20 = 0.1*(1+cos(2*pi*space));
  x30 = 1.8*(1+cos(2*pi*space));
   
  y0(1:N) = x10(:);
  y0(N+1:2*N) = x20(:); y0(2*N+1:3*N) = x30(:);
  y0 = y0';
  sol = dde23(@f,1.8,y0,tspan);
  e = zeros(size(sol.x))';
  U1 = [sol.y(1,:)' sol.y(1:N,:)' sol.y(N,:)'];
  U2 = [sol.y(N+1,:)' sol.y(N+1:2*N,:)' sol.y(2*N,:)'];
  U3 = [sol.y(2*N+1,:)' sol.y(2*N+1:3*N,:)' sol.y(3*N,:)'];
  [n m] = size(U1);
  colormap([0 0 0])
  C = ones(n,m);
  
  figure(1)
  waterfall(sol.x,[0:1/(N+1):1],U1',C')
  xlabel('space','FontSize',16),
  ylabel('time','FontSize',16)
  zlabel('x_1','FontSize',16)
  figure(2)
  waterfall(sol.x,[0:1/(N+1):1],U2',C')
  xlabel('space','FontSize',16)
  ylabel('time','FontSize',16)
  zlabel('x_2','FontSize',16)
  figure(3)
  waterfall(sol.x,[0:1/(N+1):1],U3',C')
  xlabel('space','FontSize',16)
  label('time','FontSize',16)
  zlabel('x_3','FontSize',16)
  
  function dydt = f(t,y,Z)
  r2 = b*(N+1)^2;
  up1 = [y(2:N);0]; down1 = [0;y(1:N-1)];
  up2 = [y(N+2:2*N);0]; down2 = [0;y(N+1:2*N-1)];
  up3 = [y(2*N+2:3*N);0]; down3 = [0;y(2*N+1:3*N-1)];
  ylag = Z(:,1);
  mat = -2*eye(N,N);mat(1,1)=-1;mat(N,N)=-1;
  dydt(1:N) = r2*(mat*y(1:N)+up1+down1)+ y(1:N).*(1-ylag(1:N));
  dydt(N+1:2*N) = r2*(mat*y(N+1:2*N)+up2+down2)+y(N+1:2*N).*(1-ylag(N+1:2*N)+y(1:N)+y(2*N+1));
  dydt(2*N+1:3*N) = r2*(mat*y(2*N+1:3*N)+up3+down3)+y(2*N+1:3*N).*(1-ylag(2*N+1:3*N)-y(N+1:2*N));
  
  dydt=dydt';
  end 
end