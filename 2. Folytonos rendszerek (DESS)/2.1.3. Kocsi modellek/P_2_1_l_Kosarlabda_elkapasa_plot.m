close all

%Read data from Simulink
t = out.simout.data(:,1);
x = out.simout.data(:,2);
z = out.simout.data(:,3);
h = out.simout.data(:,4);

hold on 
%Draw default lines
plot([0 4],[0 0],'k')
plot([0 0],[-0.2 1],'k')

xlabel z
ylabel h
%Draw ball and cart
for i=1:length(t)
    plot(z(i),h(i),"r*")
    plot(x(i),0,"b*")
    pause(0.1)
end
hold off