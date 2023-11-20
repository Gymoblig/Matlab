
x = -2:0.05:2;
y = x;

[X, Y] = meshgrid(x, y);
Z = X.*exp(-X.^2 -  Y.^2);

figure;
surf(X, Y, Z);
grid on;
ax=gca;
set(ax,'XLim', [-2.5, 2.5], 'YLim', [-2.5, 2.5], 'ZLim', [-2.5, 2.5]);

