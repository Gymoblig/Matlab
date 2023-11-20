x=[-1.5 1.5 1.5 -1.5 -1.5];
y=[0 0 2 2 0];
fill(x,y,'r');
hold on;
plot(x,y,'b','LineWidth',4);
axis([[-2 2 -0.5 2.5]]);
axis equal;


text(0, 1, 'OBDLZNIK', 'Color', 'black', 'FontSize', 14, 'HorizontalAlignment', 'center');
