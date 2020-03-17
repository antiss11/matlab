function b = getB(k_m, k_w)
% Функция для расчета коэффициента "b"
    b = -((2 * k_w * (k_m - 1)) / (k_w * (2 - k_w) - 1));
%     disp(b);
end