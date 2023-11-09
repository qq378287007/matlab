arr = [17, 124, 1, 8, 15, 23, 5, 7, 14, 16, 4, 6];
[out_mean, out_std, out_arr, m1, m2] = call_c_demo(arr);
disp(out_mean); 
disp(out_std); 
disp(out_arr); 
disp(m1); 
disp(m2);