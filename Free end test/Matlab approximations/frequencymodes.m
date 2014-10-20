n = [1,5,25,50,75,100]; % Enter in desired modes
youngs = 200e+9;
density = 7800;
L = 6.096; %20 ft length of steel cable

[frn] = modefreq(L,n,youngs,density); % Other variables are just made up
figure(1)
plot(n,frn)

omega = frn / (2*pi);
x= linspace(-2*pi,2*pi,100000);

figure(2)
for i = 1:length(n)
    shape(i,:) = sin(omega(i).*x);
    plot(x,shape(i,:),'color',rand(1,3))
    hold on
end
