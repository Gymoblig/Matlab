x=[-1 1 0 0 -1];
y=[0 0 2 2 0];
fill(x,y,'r');
hold on;
plot(x,y,'b','LineWidth',4);
axis([[-2 2 -0.5 2.5]]);
axis equal;


text(0, 1, 'TROJUHOLNIK', 'Color', 'black', 'FontSize', 8, 'HorizontalAlignment', 'center');
