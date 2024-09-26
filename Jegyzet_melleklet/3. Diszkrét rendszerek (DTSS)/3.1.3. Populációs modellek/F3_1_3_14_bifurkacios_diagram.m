clear all
close all

K = 200;
hold on
for r=0:0.005:3
  x(1) = 10;
  for i = 2:100
    x(i) = x(i-1)+r*x(i-1)*(1-x(i-1)/K);
  end
  plot(r,x(1,70:100),".k")
end

xlabel r
ylabel x(70:100)
hold off