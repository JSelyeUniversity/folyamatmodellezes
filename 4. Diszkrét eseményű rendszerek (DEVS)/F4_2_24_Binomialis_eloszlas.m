% Binomiális eloszlás
clear all, close all

N = 1000; 
binomial_dist = 0.05;    % Binomiális eloszlás
rng(123);
nbins = 100;
binomial_samples = binornd(N, binomial_dist, 1, N);
histogram(binomial_samples,nbins);  
ylabel('Gyakoriság');

hold on;
x = 0:100;
y = binopdf(x, N, binomial_dist)*N;
xlim([0,100])
plot(x, y, 'r', 'LineWidth', 2);
legend('Véletlen generált értékek', 'Várt eloszlás');
hold off;

