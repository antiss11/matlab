function M = calcRegulatorM(M_n, w_max, w, w_n)
% ������� ��� ����������� ������� ��������� ������������ �����
    M = M_n * (w_max - w)/(w_max - w_n);
end

