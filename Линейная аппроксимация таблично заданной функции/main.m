function main(data_table, data_given)
    function f = extrapolation(argument)
        if arg > data_table(2, end)
            last_arg = data_table(2, end);
            prelast_arg = data_table(2, length(data_table) - 1);
            last_f = data_table(1, end);
            prelast_f = data_table(1, length(data_table) - 1);
            f = last_f + ((last_f - prelast_f)/(last_arg - prelast_arg))...
                * (argument - last_arg);
        elseif arg < data_table(2, 1)
            first_f = data_table(1, 1);
            second_f = data_table(1, 2);
            first_arg = data_table(2, 1);
            second_arg = data_table(2, 2);
            f = first_f - (second_f - first_f)/(second_arg - first_arg)...
                * (first_arg - argument);
        else        
            for j = 1:1:length(data_table)        
                if data_table(2,j) < argument &&...
                        data_table(2,j+1) > argument                
                    f1 = data_table(1, j);
                    f2 = data_table(1, j+1);
                    arg1 = data_table(2, j);
                    arg2 = data_table(2, j+1);               
                    f = f1 + (f2 - f1)/(arg2 - arg1) * (argument - arg1);
                    break
                end
            end
        end
    end
    writematrix(data_table', "data_base.dat");
    file = fopen("approx_data.dat", "w");
    for i = 1:1:length(data_given)
        arg = data_given(i);
        f = extrapolation(arg);
        fprintf(file, "%d %d\n", arg, f);
    end
    fclose(file);
end