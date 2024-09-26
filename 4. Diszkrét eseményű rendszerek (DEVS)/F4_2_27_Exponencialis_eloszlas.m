% Exponenciális eloszlás
clear all, close all

N = 1000; 
lambda = 10;
rng(123);
nbins = 100;

figure()
exp_samples = exprnd(1/lambda, [N, 1]);
histogram(exp_samples,nbins)
ylabel('Gyakoriság');

hold on;
x = linspace(0, max(exp_samples), N);
y = lambda*exp(-lambda*x)/5;
plot(x, y*50, 'r-', 'LineWidth', 2);
legend('Véletlen generált értékek', 'Várt eloszlás');
hold off;



