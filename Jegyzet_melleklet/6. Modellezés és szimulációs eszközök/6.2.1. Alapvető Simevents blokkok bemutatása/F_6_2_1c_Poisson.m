persistent rngInit;
if isempty(rngInit)
  seed = 12345;
  rng(seed);
  rngInit = true;
end

% Minta: Poisson eloszlás
% m: Mean
m = 1;
dt = poissrnd(m);
