function M = calcOverloadM(M_0, M_max, w, w_m, w_0) 
% Функция определения перегрузочной ветви
    M = M_0 + (M_max - M_0)*(w - w_0)/(w_m - w_0);
end