theta = linspace(0, 2*pi, 100);
r = ones(size(theta));

figure;
hold on;
patch(sin(theta), cos(theta), 'g');
plot(cos(theta), sin(theta), 'r', 'LineWidth', 4);

axis equal;

text(0, 0, 'KRUH', 'Color', 'black', 'FontSize', 14, 'HorizontalAlignment', 'center');
