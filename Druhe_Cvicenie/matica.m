function [b, B] = matica(A)
    b = sum(A, 2);
    B = inv(A);
end
