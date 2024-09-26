% labdák színe és száma
colors = {'piros', 'sárga', 'fehér'};
counts = [2, 5, 1];

% szimulációk száma
N = 100000;

% lehetséges kimenetelek
outcome_counts = zeros(length(colors), length(colors));
same_color_counts = 0;
diff_color_counts = 0;

% 2 labda véletlenszerű kiválasztása
for i = 1:N    
    perm = randperm(sum(counts));
    
    % labdák színének meghatározása
    ball1_color = find(cumsum(counts) >= perm(1), 1);
    ball2_color = find(cumsum(counts) >= perm(2), 1);    
    
    outcome_counts(ball1_color, ball2_color) = outcome_counts(ball1_color, ball2_color) + 1;
    % labdák színének ellenőrzése
    if ball1_color == ball2_color
        same_color_counts = same_color_counts + 1;
    else
        diff_color_counts = diff_color_counts + 1;
    end
end

% darabszámok valószínűséggé alakítása
outcome_probs = outcome_counts / num_simulations;
same_color_prob = [same_color_counts/num_simulations, 1-same_color_counts/num_simulations];
diff_color_prob = [diff_color_counts/num_simulations, 1-diff_color_counts/num_simulations];

% vizualizáció hőtérkép segítségével
subplot(1, 2, 1);
imagesc(outcome_probs);
cb = colorbar;
cb.Label.String = 'Valószínűség';
xlabel('1. labda színe');
ylabel('2. labda színe');
xticks(1:length(colors));
xticklabels(colors);
yticks(1:length(colors));
yticklabels(colors);

% vizualizáció oszlopdiagram segítségével
subplot(1, 2, 2);
bar(1, same_color_prob(1), 'FaceColor', '#77AC30');
hold on;
bar(2, diff_color_prob(1), 'FaceColor', '#A2142F');
xticks([]);
text(1, same_color_prob(1)+0.05, sprintf('%.2f',same_color_prob(1)), ...
    'HorizontalAlignment', 'center');
text(2, diff_color_prob(1)+0.05, sprintf('%.2f',diff_color_prob(1)), ...
    'HorizontalAlignment', 'center');
legend({'Egyforma szín', 'Eltérő szín'}, 'Location', 'northwest');
ylabel('Valószínűség');