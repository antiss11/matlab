function a = getA(k_m, k_w)
% Функция для расчета коэффициента "a"
    a = (k_m * k_w * (2 - k_w) - 1) / (k_w * (2 - k_w) - 1);
end