function [b, max_hodnota, max_pozicia, min_hodnota, min_pozicia] = funkcia_mat()
    c = linspace(1, 20, 20);
    b = sum(c);
    [max_hodnota, max_pozicia] = max(c);
    [min_hodnota, min_pozicia] = min(c);
    disp(['Suma vektoru c: ', num2str(b)]);
    disp(['Maximálny prvok: ', num2str(max_hodnota), ' na pozícii ', num2str(max_pozicia)]);
    disp(['Minimálny prvok: ', num2str(min_hodnota), ' na pozícii ', num2str(min_pozicia)]);
end
