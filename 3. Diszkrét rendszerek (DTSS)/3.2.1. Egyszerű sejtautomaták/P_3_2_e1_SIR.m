beta = 5*10^-8;   % fertõzõdés sebessége
gamma = 0.12;    % gyógyulás sebessége
delta = 0.0;    % immunitás elvesztésének sebessége
N = 5000000;    % teljes populáció N = S + I + R
I0 = 10;      % fertõzöttek száma elsõ napon
T = 400;      % vizsgált idõtartam
dt = 1/4;      % idõintervallum, lépésnagyság (6 óra)
 
[S,I,R] = sir_model(beta,gamma,delta,N,I0,T,dt);
tt = 0:dt:T-dt; 
 
plot(tt,S,'b',tt,I,'r',tt,R,'g','LineWidth',2.5); grid on;
xlabel('Napok száma'); ylabel('Vizsgált populáció mérete (5 millió lakos)');
legend('S','I','R');
 
function [S,I,R] = sir_model(beta,gamma,delta,N,I0,T,dt)
  
  S = zeros(1,T/dt);
  I = zeros(1,T/dt);
  R = zeros(1,T/dt);
  
  S(1) = N;  
  I(1) = I0;
  
  for tt = 1:(T/dt)-1    
    dS = (-beta*I(tt)*S(tt) + delta*R(tt)) * dt;
    dI = (beta*I(tt)*S(tt) - gamma*I(tt)) * dt;
    dR = (gamma*I(tt) - delta*R(tt)) * dt;
    S(tt+1) = S(tt) + dS;
    I(tt+1) = I(tt) + dI;
    R(tt+1) = R(tt) + dR;
  end
end
