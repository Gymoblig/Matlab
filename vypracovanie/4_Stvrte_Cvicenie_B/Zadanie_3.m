
x = -4:0.1:4;
y = x;

[X, Y] = meshgrid(x, y);
Z = -X.^2 -  Y.^2;

figure;
sh=surf(X, Y, Z);
grid on;
ax=gca;
set(ax,'Color','g');

