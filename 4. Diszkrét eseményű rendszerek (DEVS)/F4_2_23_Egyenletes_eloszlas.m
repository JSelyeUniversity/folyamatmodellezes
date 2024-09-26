%Egyenletes eloszlás
clear all, close all
N = 1000;   
uniform_min = 1;      % Minimum érték uniform eloszláshoz
uniform_max = 100;     % Maximum érték uniform eloszláshoz
rng(123);
nbins = 100;

uniform_samples = unidrnd(uniform_max, 1, N);    
histogram(uniform_samples, nbins);    
ylabel('Gyakoriság');
    
hold on;
expected_counts = ones(uniform_min,uniform_max) * numel(uniform_samples) / 100;
plot(uniform_min:uniform_max, expected_counts, 'r-', 'LineWidth', 2);
legend('Véletlen generált értékek', 'Várt eloszlás');
hold off;
