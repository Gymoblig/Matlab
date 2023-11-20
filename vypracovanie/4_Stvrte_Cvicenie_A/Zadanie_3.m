
x = -3:0.1:3;
y = x;

[X, Y] = meshgrid(x, y);
Z = X.^2 + Y.^2;

figure;
sh=surf(X, Y, Z);
grid on;
ax=gca;
ax.GridColor='r';

