function c = getC(k_m, k_w)
    c = (k_w^2 * (k_m - 1)) / (k_w * (2 - k_w) - 1);
%     c = abs(c);
end