clear all, close all

sol = dde23(@ddex1de,[1, 0.2],@ddex1hist,[0, 5]);
plot(sol.x,sol.y)

title('Wille” és Baker példa');
xlabel('Idő');
ylabel('y(t)');

function s = ddex1hist(t)
s = ones(3,1);
end

function dydt = ddex1de(t,y,Z)
ylag1 = Z(:,1);
ylag2 = Z(:,2);
dydt = [ ylag1(1)
     ylag1(1) + ylag2(2)
     y(2) ];
end
