function M = calcWorkM(M_max, M_n, w, w_m) 
% Функция определения рабочей ветви
    M = M_max * (1 + w/w_m - (w/w_m)^(M_max / M_n) );
end