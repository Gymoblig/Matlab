p = [4, -19, 0, 120];
x = 1;
q = [x, 1];

r = conv(p, q);
r_hodnota = polyval(r, x);

fprintf('Hodnota polynómu r v bode x = 1 je: %d\n', r_hodnota);

korene_r = roots(r);
fprintf('Korene polynómu r sú:\n');
disp(korene_r);
