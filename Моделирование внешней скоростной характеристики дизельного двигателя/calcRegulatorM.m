function M = calcRegulatorM(M_n, w_max, w, w_n)
% Функция для определения момента двигателя регуляторной ветви
    M = M_n * (w_max - w)/(w_max - w_n);
end

