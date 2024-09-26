statenames = ["A" "B" "C" "D" "E"];
P =  [0.1 0.2 0.1 0.1 0.5
      0.5 0.1 0.3 0.1 0.1
      0.6 0.1 0.1 0.2 0.0
      0.1 0.2 0.1 0.5 0.1
      0.4 0.1 0.1 0.1 0.3];
mc = dtmc(P, 'StateNames', statenames);
mc.P
sum(mc.P,2)
 
figure;
graphplot(mc,'ColorEdges',true);
cb = colorbar;
cb.Label.String = 'Átmenetvalószínűség';
