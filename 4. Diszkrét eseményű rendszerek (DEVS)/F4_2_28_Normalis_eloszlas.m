% Normális eloszlás
clear all, close all

N = 1000;
mean = 50;         
sigma = 14;        
nbins = 100;
rng(123);

figure()
normal_samples = mean + sigma*randn(N, 1);
histogram(normal_samples, nbins);
ylabel('Gyakoriság');

hold on;
xlim([0,100])
x = min(normal_samples):0.1:max(normal_samples);
y = normpdf(x, mean, sigma)*N;
plot(x, y, 'r', 'LineWidth', 2);
legend('Véletlen generált értékek', 'Várt eloszlás');
hold off;




