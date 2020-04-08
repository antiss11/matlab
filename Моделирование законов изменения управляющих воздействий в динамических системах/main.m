function main(M_max, t_z, t_n, k)  
    function M = calcM(t, t_z, M_max, k)
         M = M_max * (1 - exp(-k * (t - t_z)));
    end
    t_step = 0.01;         
    f = fopen("data.dat", "w");    
    for t = 0:t_step:t_z+t_n
        if t <= t_z
            M = 0;
            fprintf(f, "%d %d\n", t, M);
        else
            M = calcM(t, t_z, M_max, k);
            if t >= t_z + t_n && M < M_max / 100 * 90
                disp("Увеличьте коэффициент k");
            elseif t >= t_z + t_n && M > M_max / 100 * 95
                disp("Уменьшите коэффициент k");
            else
                fprintf(f, "%d %d\n", t, M);
            end
        end
    end
    for t = t_z+t_n:t_step:t_z+t_n+1
        M = calcM(t, t_z, M_max, k);
        fprintf(f, "%d %d\n", t, M);
    end
    fclose(f);
end

