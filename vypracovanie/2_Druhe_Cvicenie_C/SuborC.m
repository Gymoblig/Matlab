x = -pi:pi:0;
y = cos(x);
B = [x' y'];
[z, ~] = matica(B);
celkovySucet = sum(z);
disp(['Súčet prvkov vektorov je: ', num2str(celkovySucet)]);


