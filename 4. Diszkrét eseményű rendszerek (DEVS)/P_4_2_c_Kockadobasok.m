close all
clear all

N = 10000;      %dobások száma
K = 2;          %kockák száma
rng(1234);      %véletlen kezdőérték

val = randi([1,6],K,N);
sum_val = sum(val);

%kockadobások összegének gyakorisága
counts = zeros(1,11);
for i = 2:12
    counts(i-1) = sum(sum_val == i);
end

%y tengely értékei
percentages = counts / N * 100;

x = 2:12;
bar(x, percentages);
xlabel('Két kockadobás összege');
ylabel('Gyakoriság (%)');

hold on
mean_val = mean(sum_val);
line(x, percentages, 'Color', 'r', 'LineWidth', 2);
%legend('Rolls', 'Mean', 'Location', 'northwest');