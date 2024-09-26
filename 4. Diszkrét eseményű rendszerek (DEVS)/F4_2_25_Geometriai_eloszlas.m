% Geometriai eloszlás
clear all, close all

N = 1000;
rng(123);
nbins = 100;

geometric_samples = geornd(1/N, 1, N);  
histogram(geometric_samples,nbins);
ylabel('Gyakoriság');
    
hold on;
x = 0:max(geometric_samples);
y = geopdf(x, 1/N)*N/10;
xlim([0,7500])
plot(x, y*N, 'r', 'LineWidth', 2);
legend('Véletlen generált értékek', 'Várt eloszlás');
hold off;


