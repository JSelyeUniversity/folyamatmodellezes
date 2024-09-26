close all;
clear all;

% Paraméterek
acceptable = 0.8;     % Megfelelő termék gyártásának valószínűsége
N = 1000;           % Kísérletek száma

% Valószínűségek kiszámítása
both_acceptable = acceptable^2;
one_acceptable = 2*acceptable*(1-acceptable);
none_acceptable = (1-acceptable)^2;

% Oszlopdiagram 
x = 1:3;
y = [both_acceptable, one_acceptable, none_acceptable]*N;
bar(x, y);
xticklabels({'Mindkettő megfelel', 'Egyik megfelel', 'Egyik sem felel meg'});
ylabel('Előfordulások száma');

text(x, y, num2str(y'/N), 'HorizontalAlignment', 'center', 'VerticalAlignment', 'bottom');
