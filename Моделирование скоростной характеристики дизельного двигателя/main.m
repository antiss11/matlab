% w_0 = input("������� w_0: ");
% w_m = input("������� w_m: ");
% w_n = input("������� w_n: ");
% w_max = input("������� w_max: ");
% M_0 = input("������� M_0: ");
% M_max = input("������� M_max: ");
% M_n = input("������� M_n: ");
w_0 = 104.7;
w_m = 146.6;
w_n = 199.0;
w_max = 214.7;
M_0 = 422;
M_max = 470;
M_n = 384;
results = [];
w_col = 1;
M_col = 2;
step = 0.05;
results = [];
i = 1;
% ����������� ������������� �����
for w = w_0:step:w_m
    M = calcOverloadM(M_0, M_max, w, w_m, w_0);
    results(i, w_col) = w;
    results(i, M_col) = M;
    i = i + 1;
end

% ����������� ������� �����
%for w = w_m:step:w_n
for w = w_m:step:w_n
    M = calcWorkM(M_max, M_n, w, w_m);
    results(i, w_col) = w;
    results(i, M_col) = M;
    i = i + 1;
end
% ����������� ������������ �����
%for w = w_n:step:w_max
for w = w_n:step:w_max
    M = calcRegulatorM(M_n, w, w_max, w_n);
    results(i, w_col) = w;
    results(i, M_col) = M;
    i = i + 1;
end
