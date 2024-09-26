% Poisson eloszlás
clear all, close all

N = 1000; 
lambda = 70;       
rng(123);
nbins = 100;

figure()
poisson_samples = poissrnd(lambda,N,1);
histogram(poisson_samples,nbins);  
ylabel('Gyakoriság');
    
hold on;
x = 0:max(poisson_samples);
y = poisspdf(x, lambda)*N;
plot(x, y, 'r', 'LineWidth', 2);
legend('Véletlen generált értékek', 'Várt eloszlás','Location','northwest');
hold off;


