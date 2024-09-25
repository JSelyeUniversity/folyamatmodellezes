clear all
close all

K = 200;
r = 1;
x1(1) = 10;
for i = 2:100
    x1(i) = x1(i-1)+r*x1(i-1)*(1-x1(i-1)/K);
end
r = 2.2449;
x2(1) = 10;
for i = 2:100
    x2(i) = x2(i-1)+r*x2(i-1)*(1-x2(i-1)/K);
end
r = 2.544;
x3(1) = 10;
for i = 2:100
    x3(i) = x3(i-1)+r*x3(i-1)*(1-x3(i-1)/K);
end

hold on
tiledlayout(3,1)
nexttile
plot(x1,"*k"); plot(x1,"k"); title r=1
nexttile
plot(x2,"*k"); plot(x2,"k"); title r=2.2449
nexttile
plot(x3,"*k"); plot(x3,"k"); title r=2.544
hold off
