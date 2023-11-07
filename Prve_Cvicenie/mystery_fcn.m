function [res] = mystery_fcn(n)
    for i=1:n
        r = sqrt(5);
        phi = (1+r)/2;
        psi = (1-r)/2;
        mystery_val = (phi^i - psi^i)/r;
    end
    res= mystery_val;
end