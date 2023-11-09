function [out_mean, out_std, out_arr, m1, m2] = call_c_demo(arr)
slib_name = 'Dll_demo';
shead_name = 'Dll_demo.h';
stype_in_name = 'S_DEMO_IN';
stype_res_name = 'S_DEMO_RESULT';
sfunc_name = 'demo_mean_std';

% 载入库文件
if not(libisloaded(slib_name))
    [m1, m2] = loadlibrary(slib_name, shead_name);
else
    m1 = cell(0, 0);
    m2 = 'already loaded ...';
end

% 构造参数
ptr_arr = libpointer('doublePtr', arr);
para_in.n = length(arr);
para_in.arr = ptr_arr;
s_para_in = libstruct(stype_in_name, para_in);
arr2 = zeros(length(arr), 1);
ptr_arr2 = libpointer('doublePtr', arr2);
para_out.mean = 0;
para_out.std = 0;
s_para_res = libstruct(stype_res_name, para_out);
 
% 调用库中的函数
[out_ret, out_arr, ~] = calllib(slib_name, sfunc_name, s_para_res, ptr_arr2, s_para_in);
out_mean = out_ret.mean;
out_std = out_ret.std;
% 释放空间
clear s_para_in;
clear s_para_res;
clear ptr_arr;
clear ptr_arr2;
end