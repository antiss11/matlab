function D = get_Dp(D_0, h_h, h)
    D = D_0 + (h_h / h) * (D_0 - 2*h - h_h);
end

