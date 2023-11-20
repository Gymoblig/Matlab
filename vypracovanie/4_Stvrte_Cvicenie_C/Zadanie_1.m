x1 = -180:1:180;
y1 = sind(x1);
subplot(2,2,1);
h1 = plot(x1, y1);
set(h1, 'LineWidth', 4);
title('Funkcia sinus(x)');
xlabel('x');
ylabel('sin(x)');
xlim([-180, 180]);



x2 = -2*pi:0.1:2*pi;
y2 = cos(x2);
subplot(2,2,2);
h2 = plot(x2, y2);

set(h2, 'LineStyle', '--'); 

title('Funkcia kosinus(x)');
xlabel('x');
ylabel('cos(x)');

x3 = 0:0.2:50;
y3 = log(x3);
subplot(2,2,3);
h3 = plot(x3, y3);

set(h3, 'Color', 'r'); 

title('Logaritmicka funkcia log(x)');
xlabel('x');
ylabel('log(x)');
xlim([0, 50]);




x4 = -5:0.1:5;
y4 = x4.^2;
subplot(2,2,4);
h4 = plot(x4, y4);
title('Funkcia x^2');
xlabel('x');
ylabel('x^2');
