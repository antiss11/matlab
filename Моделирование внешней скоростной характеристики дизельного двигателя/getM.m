function M = getM(M_n, a, b, c, w, w_n)
% ������� ��� ����������� ������� ��������� � ��������� w_0 <= w <= w_n
    M = M_n * (a + b * (w / w_n) + c * (w / w_n)^2);
end

