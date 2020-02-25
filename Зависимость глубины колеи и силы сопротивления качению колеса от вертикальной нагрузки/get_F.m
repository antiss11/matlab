function F = get_F(G, k, b, D_p)
    F = 0.5 * G * sqrt( G / (k * b * D_p^2) );
end

