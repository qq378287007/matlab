% 设置文件夹路径
folder = 'F:\zao相关资料\浓度';

% 获取文件夹中的所有Excel文件名
filelist = dir(fullfile(folder, '*.xlsx'));

% 循环遍历每个Excel文件，并读取其中的数据并绘图
for i = 1:length(filelist)
    % 读取Excel文件中的数据
    filename = fullfile(folder, filelist(i).name);
end