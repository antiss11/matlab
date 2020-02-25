function [h_h] = getH_h(G, p_h, r_0, r_c)
    h_h = G / (2 * pi * p_h * sqrt( r_0 * r_c ));
end

