function M = calcRegulatorM(M_n, w, w_max, w_n) 
% Функция определения регуляторной ветви
    M = M_n * (w_max - w) / (w_max - w_n);
end