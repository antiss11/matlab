w_0 = 104.7;
w_m = 146.6;
w_n = 199;
w_max = 214.7;
M_0 = 422;
M_max = 470;
M_n = 384;
k_w = 1.7;      % Подбирается экспериментально
k_m = 1.1;      % Подбирается экспериментально
step = 0.05;
f = fopen("data.dat", "w");
a = getA(k_m, k_w);
b = getB(k_m, k_w);
c = getC(k_m, k_w);
for w = w_0:step:w_n
    M = getM(M_n, a, b, c, w, w_n);
    fprintf(f, "%3.2f %3.2f\n", w, M);  
end

for w = w_n:step:w_max
    M = calcRegulatorM(M_n, w_max, w, w_n);
    fprintf(f, "%3.2f %3.2f\n", w, M);
end
fclose(f);