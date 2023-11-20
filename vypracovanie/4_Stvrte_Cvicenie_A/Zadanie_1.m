x1 = -360:1:360;
y1 = cosd(x1);
subplot(2,2,1);
h1 = plot(x1, y1);
set(h1, 'LineWidth', 2);
title('Funkcia kosinus(x)');
xlabel('x');
ylabel('cos(x)');

x2 = -2*pi:0.1:2*pi;
y2 = sin(x2);
subplot(2,2,2);
h2 = plot(x2, y2);

set(h2, 'LineStyle', '--'); 

title('Funkcia sinus(x)');
xlabel('x');
ylabel('sin(x)');

x3 = -3:0.1:3;
y3 = exp(x3);
subplot(2,2,3);
h3 = plot(x3, y3);

set(h3, 'Color', [1 0 0]); 

title('Exponenciálna funkcia exp(x)');
xlabel('x');
ylabel('exp(x)');

x4 = -5:0.1:5;
y4 = x4.^2;
subplot(2,2,4);
h4 = plot(x4, y4);
title('Funkcia x^2');
xlabel('x');
ylabel('x^2');
