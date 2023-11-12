function p = magic_mat()
    G = magic(6);
    p = sum(G(:) > 15);
    disp(['Počet prvkov väčších ako 15 je: ', num2str(p)]);
end
