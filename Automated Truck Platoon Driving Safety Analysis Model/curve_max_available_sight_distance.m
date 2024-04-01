%% 备注
% 第四章的最大可用视距图



%% V=10 m/s

clc;
clear;

% 准备数据
x = [0.000 0.050 0.100 0.150 0.200 0.250 0.000 0.050 0.100 0.150 0.200 0.250 0.000 0.050 0.100 0.150 0.200 0.250 0.000 0.050 0.100 0.150 0.200 0.250];
y = [0.300 0.300 0.300 0.300 0.300 0.300 0.500 0.500 0.500 0.500 0.500 0.500 0.700 0.700 0.700 0.700 0.700 0.700 0.900 0.900 0.900 0.900 0.900 0.900];
z1 = [274.418 273.175 271.926 270.672 269.411 268.145 277.521 276.290 275.054 273.812 272.565 271.311 282.034 280.822 279.604 278.381 277.152 275.918 287.898 286.708 285.514 284.315 283.110 281.901];
z2 = [274.418 271.926 269.411 266.872 264.308 261.719 277.521 275.054 272.565 270.052 267.515 264.954 282.034 279.604 277.152 274.678 272.182 269.662 287.898 285.514 283.110 280.686 278.240 275.772];
z3 = [274.418 270.672 266.872 263.017 259.104 255.130 277.521 273.812 270.052 266.238 262.368 258.439 282.034 278.381 274.678 270.925 267.118 263.256 287.898 284.315 280.686 277.009 273.282 269.503];
z4 = [274.418 269.411 264.308 259.104 253.791 248.363 277.521 272.565 267.515 262.368 257.116 251.754 282.034 277.152 272.182 267.118 261.955 256.687 287.898 283.110 278.240 273.282 268.232 263.083];

% 创建新图形窗口
fig = figure('Position', [50, 50, 800, 600]);

% 绘制第一个曲面
[X1, Y1] = meshgrid(linspace(min(x), max(x), 100)', linspace(min(y), max(y), 100));
Z1 = griddata(x, y, z1, X1, Y1);
surf(X1, Y1, Z1);
title('Surface 1', 'FontSize', 14);
xlabel('X', 'FontSize', 12);
ylabel('Y', 'FontSize', 12);
zlabel('Z', 'FontSize', 12);
colorbar;

hold on; % 添加这行代码

% 绘制第二个曲面
[X2, Y2] = meshgrid(linspace(min(x), max(x), 100)', linspace(min(y), max(y), 100));
Z2 = griddata(x, y, z2, X2, Y2);
surf(X2, Y2, Z2);
title('Surface 2', 'FontSize', 14);
xlabel('X', 'FontSize', 12);
ylabel('Y', 'FontSize', 12);
zlabel('Z', 'FontSize', 12);
colorbar;

hold on; % 添加这行代码

% 绘制第三个曲面
[X3, Y3] = meshgrid(linspace(min(x), max(x), 100)', linspace(min(y), max(y), 100));
Z3 = griddata(x, y, z3, X3, Y3);
surf(X3, Y3, Z3);
title('Surface 2', 'FontSize', 14);
xlabel('X', 'FontSize', 12);
ylabel('Y', 'FontSize', 12);
zlabel('Z', 'FontSize', 12);
colorbar;

hold on; % 添加这行代码

% 绘制第四个曲面
[X4, Y4] = meshgrid(linspace(min(x), max(x), 100)', linspace(min(y), max(y), 100));
Z4 = griddata(x, y, z4, X4, Y4);
% zlim([0, 65]); % 设置 y 轴范围为 [0, 65]
surf(X4, Y4, Z4);
title('Surface 2', 'FontSize', 14);
xlabel('X', 'FontSize', 12);
ylabel('Y', 'FontSize', 12);
zlabel('Z', 'FontSize', 12);
colorbar;

% 设置图形属性
set(gcf,'Renderer','OpenGL'); % 设置渲染器
set(gca,'FontName','Arial'); % 设置字体
set(gca,'FontSize',12); % 设置字体大小
set(gcf,'color','w'); % 设置图形背景色为白色


%% V=15 m/s

clc;
clear;

% 准备数据
x = [0.000 0.050 0.100 0.150 0.200 0.250 0.000 0.050 0.100 0.150 0.200 0.250 0.000 0.050 0.100 0.150 0.200 0.250 0.000 0.050 0.100 0.150 0.200 0.250];
y = [0.300 0.300 0.300 0.300 0.300 0.300 0.500 0.500 0.500 0.500 0.500 0.500 0.700 0.700 0.700 0.700 0.700 0.700 0.900 0.900 0.900 0.900 0.900 0.900];
z1 = [12.950 10.746 9.566 9.016 8.626 8.585 10.157 8.563 7.576 7.058 6.735 6.537 8.228 6.962 6.178 5.767 5.512 5.357 6.818 5.853 5.257 4.944 4.751 4.633];
z2 = [23.527 18.790 16.215 14.896 13.972 13.718 16.750 13.664 11.765 10.732 10.094 9.724 12.750 10.490 9.111 8.378 7.946 7.689 10.204 8.572 7.585 7.076 6.771 6.589];
z3 = [36.795 29.557 25.547 23.459 21.946 21.440 26.269 21.465 18.472 16.801 15.720 15.026 19.872 16.339 14.146 12.937 12.170 11.695 15.767 13.202 11.615 10.747 10.212 9.895];
z4 = [52.962 42.779 37.149 34.240 32.116 31.422 37.812 31.048 26.822 24.463 22.923 21.915 28.489 23.512 20.411 18.692 17.585 16.877 22.407 18.808 16.567 15.327 14.542 14.049];

% 创建新图形窗口
fig = figure('Position', [50, 50, 800, 600]);

% 绘制第一个曲面
[X1, Y1] = meshgrid(linspace(min(x), max(x), 100)', linspace(min(y), max(y), 100));
Z1 = griddata(x, y, z1, X1, Y1);
surf(X1, Y1, Z1);
zlim([0, 65]); % 设置 y 轴范围为 [0, 65]
title('Surface 1', 'FontSize', 14);
xlabel('X', 'FontSize', 12);
ylabel('Y', 'FontSize', 12);
zlabel('Z', 'FontSize', 12);
colorbar;

hold on; % 添加这行代码

% 绘制第二个曲面
[X2, Y2] = meshgrid(linspace(min(x), max(x), 100)', linspace(min(y), max(y), 100));
Z2 = griddata(x, y, z2, X2, Y2);
surf(X2, Y2, Z2);
zlim([0, 65]); % 设置 y 轴范围为 [0, 65]
title('Surface 2', 'FontSize', 14);
xlabel('X', 'FontSize', 12);
ylabel('Y', 'FontSize', 12);
zlabel('Z', 'FontSize', 12);
colorbar;

hold on; % 添加这行代码

% 绘制第三个曲面
[X3, Y3] = meshgrid(linspace(min(x), max(x), 100)', linspace(min(y), max(y), 100));
Z3 = griddata(x, y, z3, X3, Y3);
surf(X3, Y3, Z3);
zlim([0, 65]); % 设置 y 轴范围为 [0, 65]
title('Surface 2', 'FontSize', 14);
xlabel('X', 'FontSize', 12);
ylabel('Y', 'FontSize', 12);
zlabel('Z', 'FontSize', 12);
colorbar;

hold on; % 添加这行代码

% 绘制第四个曲面
[X4, Y4] = meshgrid(linspace(min(x), max(x), 100)', linspace(min(y), max(y), 100));
Z4 = griddata(x, y, z4, X4, Y4);
surf(X4, Y4, Z4);
zlim([0, 65]); % 设置 y 轴范围为 [0, 65]
title('Surface 2', 'FontSize', 14);
xlabel('X', 'FontSize', 12);
ylabel('Y', 'FontSize', 12);
zlabel('Z', 'FontSize', 12);
colorbar;

% 设置图形属性
sgtitle('Two Surfaces in One 3D Plot', 'FontSize', 16); % 设置总标题
set(gcf,'Renderer','OpenGL'); % 设置渲染器
set(gca,'FontName','Arial'); % 设置字体
set(gca,'FontSize',12); % 设置字体大小
set(gcf,'color','w'); % 设置图形背景色为白色








%% V=20 m/s

clc;
clear;

% 准备数据
x = [0.000 0.050 0.100 0.150 0.200 0.250 0.000 0.050 0.100 0.150 0.200 0.250 0.000 0.050 0.100 0.150 0.200 0.250 0.000 0.050 0.100 0.150 0.200 0.250];
y = [0.300 0.300 0.300 0.300 0.300 0.300 0.500 0.500 0.500 0.500 0.500 0.500 0.700 0.700 0.700 0.700 0.700 0.700 0.900 0.900 0.900 0.900 0.900 0.900];
z1 = [11.223 9.311 8.287 7.810 7.473 7.438 8.779 7.400 6.546 6.098 5.821 5.651 7.098 6.005 5.329 4.975 4.757 4.624 5.876 5.044 4.532 4.263 4.098 3.999];
z2 = [20.198 16.124 13.910 12.776 11.982 11.764 14.317 11.675 10.050 9.166 8.621 8.306 10.856 8.929 7.754 7.130 6.763 6.546 8.661 7.274 6.436 6.005 5.748 5.595];
z3 = [31.320 25.145 21.723 19.941 18.650 18.218 22.227 18.153 15.615 14.199 13.282 12.695 16.720 13.740 11.892 10.873 10.228 9.829 13.197 11.046 9.715 8.988 8.541 8.277];
z4 = [44.733 36.108 31.337 28.869 27.068 26.475 31.703 26.013 22.459 20.475 19.179 18.331 23.709 19.554 16.966 15.531 14.607 14.016 18.514 15.530 13.673 12.645 11.995 11.588];

% 创建新图形窗口
fig = figure('Position', [50, 50, 800, 600]);

% 绘制第一个曲面
[X1, Y1] = meshgrid(linspace(min(x), max(x), 100)', linspace(min(y), max(y), 100));
Z1 = griddata(x, y, z1, X1, Y1);
surf(X1, Y1, Z1);
zlim([0, 65]); % 设置 y 轴范围为 [0, 65]
title('Surface 1', 'FontSize', 14);
xlabel('X', 'FontSize', 12);
ylabel('Y', 'FontSize', 12);
zlabel('Z', 'FontSize', 12);
colorbar;

hold on; % 添加这行代码

% 绘制第二个曲面
[X2, Y2] = meshgrid(linspace(min(x), max(x), 100)', linspace(min(y), max(y), 100));
Z2 = griddata(x, y, z2, X2, Y2);
surf(X2, Y2, Z2);
zlim([0, 65]); % 设置 y 轴范围为 [0, 65]
title('Surface 2', 'FontSize', 14);
xlabel('X', 'FontSize', 12);
ylabel('Y', 'FontSize', 12);
zlabel('Z', 'FontSize', 12);
colorbar;

hold on; % 添加这行代码

% 绘制第三个曲面
[X3, Y3] = meshgrid(linspace(min(x), max(x), 100)', linspace(min(y), max(y), 100));
Z3 = griddata(x, y, z3, X3, Y3);
surf(X3, Y3, Z3);
zlim([0, 65]); % 设置 y 轴范围为 [0, 65]
title('Surface 2', 'FontSize', 14);
xlabel('X', 'FontSize', 12);
ylabel('Y', 'FontSize', 12);
zlabel('Z', 'FontSize', 12);
colorbar;

hold on; % 添加这行代码

% 绘制第四个曲面
[X4, Y4] = meshgrid(linspace(min(x), max(x), 100)', linspace(min(y), max(y), 100));
Z4 = griddata(x, y, z4, X4, Y4);
surf(X4, Y4, Z4);
zlim([0, 65]); % 设置 y 轴范围为 [0, 65]
title('Surface 2', 'FontSize', 14);
xlabel('X', 'FontSize', 12);
ylabel('Y', 'FontSize', 12);
zlabel('Z', 'FontSize', 12);
colorbar;

% 设置图形属性
sgtitle('Two Surfaces in One 3D Plot', 'FontSize', 16); % 设置总标题
set(gcf,'Renderer','OpenGL'); % 设置渲染器
set(gca,'FontName','Arial'); % 设置字体
set(gca,'FontSize',12); % 设置字体大小
set(gcf,'color','w'); % 设置图形背景色为白色


%% V=25 m/s

clc;
clear;

% 准备数据
x = [0.000 0.050 0.100 0.150 0.200 0.250 0.000 0.050 0.100 0.150 0.200 0.250 0.000 0.050 0.100 0.150 0.200 0.250 0.000 0.050 0.100 0.150 0.200 0.250];
y = [0.300 0.300 0.300 0.300 0.300 0.300 0.500 0.500 0.500 0.500 0.500 0.500 0.700 0.700 0.700 0.700 0.700 0.700 0.900 0.900 0.900 0.900 0.900 0.900];
z1 = [8.633 7.212 6.459 6.121 5.884 5.880 7.255 6.156 5.478 5.129 4.916 4.789 6.281 5.347 4.771 4.474 4.293 4.185 5.543 4.786 4.320 4.079 3.933 3.845];
z2 = [14.797 11.900 10.334 9.549 9.003 8.879 11.318 9.296 8.053 7.386 6.981 6.752 9.239 7.652 6.684 6.179 5.886 5.717 7.910 6.686 5.949 5.576 5.357 5.229];
z3 = [21.902 17.720 15.418 14.244 13.398 13.154 16.839 13.857 12.002 10.981 10.329 9.918 13.705 11.346 9.886 9.091 8.595 8.295 11.679 9.845 8.713 8.105 7.736 7.525];
z4 = [29.922 24.348 21.289 19.746 18.629 18.322 23.056 19.071 16.587 15.223 14.345 13.783 18.743 15.581 13.616 12.545 11.866 11.442 15.892 13.434 11.910 11.083 10.568 10.255];

% 创建新图形窗口
fig = figure('Position', [50, 50, 800, 600]);

% 绘制第一个曲面
[X1, Y1] = meshgrid(linspace(min(x), max(x), 100)', linspace(min(y), max(y), 100));
Z1 = griddata(x, y, z1, X1, Y1);
surf(X1, Y1, Z1);
zlim([0, 65]); % 设置 y 轴范围为 [0, 65]
title('Surface 1', 'FontSize', 14);
xlabel('X', 'FontSize', 12);
ylabel('Y', 'FontSize', 12);
zlabel('Z', 'FontSize', 12);
colorbar;

hold on; % 添加这行代码

% 绘制第二个曲面
[X2, Y2] = meshgrid(linspace(min(x), max(x), 100)', linspace(min(y), max(y), 100));
Z2 = griddata(x, y, z2, X2, Y2);
surf(X2, Y2, Z2);
zlim([0, 65]); % 设置 y 轴范围为 [0, 65]
title('Surface 2', 'FontSize', 14);
xlabel('X', 'FontSize', 12);
ylabel('Y', 'FontSize', 12);
zlabel('Z', 'FontSize', 12);
colorbar;

hold on; % 添加这行代码

% 绘制第三个曲面
[X3, Y3] = meshgrid(linspace(min(x), max(x), 100)', linspace(min(y), max(y), 100));
Z3 = griddata(x, y, z3, X3, Y3);
surf(X3, Y3, Z3);
zlim([0, 65]); % 设置 y 轴范围为 [0, 65]
title('Surface 2', 'FontSize', 14);
xlabel('X', 'FontSize', 12);
ylabel('Y', 'FontSize', 12);
zlabel('Z', 'FontSize', 12);
colorbar;

hold on; % 添加这行代码

% 绘制第四个曲面
[X4, Y4] = meshgrid(linspace(min(x), max(x), 100)', linspace(min(y), max(y), 100));
Z4 = griddata(x, y, z4, X4, Y4);
surf(X4, Y4, Z4);
zlim([0, 65]); % 设置 y 轴范围为 [0, 65]
title('Surface 2', 'FontSize', 14);
xlabel('X', 'FontSize', 12);
ylabel('Y', 'FontSize', 12);
zlabel('Z', 'FontSize', 12);
colorbar;

% 设置图形属性
sgtitle('Two Surfaces in One 3D Plot', 'FontSize', 16); % 设置总标题
set(gcf,'Renderer','OpenGL'); % 设置渲染器
set(gca,'FontName','Arial'); % 设置字体
set(gca,'FontSize',12); % 设置字体大小
set(gcf,'color','w'); % 设置图形背景色为白色


%% V=30 m/s

clc;
clear;

% 准备数据
x = [0.000 0.050 0.100 0.150 0.200 0.250 0.000 0.050 0.100 0.150 0.200 0.250 0.000 0.050 0.100 0.150 0.200 0.250 0.000 0.050 0.100 0.150 0.200 0.250];
y = [0.300 0.300 0.300 0.300 0.300 0.300 0.500 0.500 0.500 0.500 0.500 0.500 0.700 0.700 0.700 0.700 0.700 0.700 0.900 0.900 0.900 0.900 0.900 0.900];
z1 = [7.338 6.073 5.393 5.074 4.848 4.822 5.586 4.697 4.147 3.857 3.677 3.568 4.397 3.711 3.287 3.065 2.928 2.846 3.548 3.039 2.726 2.562 2.462 2.403];
z2 = [13.081 10.412 8.960 8.212 7.688 7.538 8.986 7.306 6.273 5.709 5.361 5.159 6.597 5.410 4.686 4.300 4.073 3.939 5.094 4.266 3.765 3.507 3.353 3.263];
z3 = [20.106 16.090 13.860 12.691 11.844 11.549 13.774 11.210 9.614 8.719 8.139 7.766 9.977 8.169 7.048 6.427 6.033 5.790 7.568 6.311 5.533 5.106 4.843 4.688];
z4 = [27.486 22.911 19.820 18.206 17.027 16.618 19.413 15.867 13.651 12.407 11.591 11.054 13.907 11.421 9.872 9.007 8.448 8.089 10.361 8.652 7.587 6.993 6.616 6.378 ];

% 创建新图形窗口
fig = figure('Position', [50, 50, 800, 600]);

% 绘制第一个曲面
[X1, Y1] = meshgrid(linspace(min(x), max(x), 100)', linspace(min(y), max(y), 100));
Z1 = griddata(x, y, z1, X1, Y1);
surf(X1, Y1, Z1);
zlim([0, 65]); % 设置 y 轴范围为 [0, 65]
title('Surface 1', 'FontSize', 14);
xlabel('X', 'FontSize', 12);
ylabel('Y', 'FontSize', 12);
zlabel('Z', 'FontSize', 12);
colorbar;

hold on; % 添加这行代码

% 绘制第二个曲面
[X2, Y2] = meshgrid(linspace(min(x), max(x), 100)', linspace(min(y), max(y), 100));
Z2 = griddata(x, y, z2, X2, Y2);
surf(X2, Y2, Z2);
title('Surface 2', 'FontSize', 14);
zlim([0, 65]); % 设置 y 轴范围为 [0, 65]
xlabel('X', 'FontSize', 12);
ylabel('Y', 'FontSize', 12);
zlabel('Z', 'FontSize', 12);
colorbar;

hold on; % 添加这行代码

% 绘制第三个曲面
[X3, Y3] = meshgrid(linspace(min(x), max(x), 100)', linspace(min(y), max(y), 100));
Z3 = griddata(x, y, z3, X3, Y3);
surf(X3, Y3, Z3);
zlim([0, 65]); % 设置 y 轴范围为 [0, 65]
title('Surface 2', 'FontSize', 14);
xlabel('X', 'FontSize', 12);
ylabel('Y', 'FontSize', 12);
zlabel('Z', 'FontSize', 12);
colorbar;

hold on; % 添加这行代码

% 绘制第四个曲面
[X4, Y4] = meshgrid(linspace(min(x), max(x), 100)', linspace(min(y), max(y), 100));
Z4 = griddata(x, y, z4, X4, Y4);
surf(X4, Y4, Z4);
zlim([0, 65]); % 设置 y 轴范围为 [0, 65]
title('Surface 2', 'FontSize', 14);
xlabel('X', 'FontSize', 12);
ylabel('Y', 'FontSize', 12);
zlabel('Z', 'FontSize', 12);
colorbar;

% 设置图形属性
sgtitle('Two Surfaces in One 3D Plot', 'FontSize', 16); % 设置总标题
set(gcf,'Renderer','OpenGL'); % 设置渲染器
set(gca,'FontName','Arial'); % 设置字体
set(gca,'FontSize',12); % 设置字体大小
set(gcf,'color','w'); % 设置图形背景色为白色



%% V=35 m/s

clc;
clear;

% 准备数据
x = [0.000 0.050 0.100 0.150 0.200 0.250 0.000 0.050 0.100 0.150 0.200 0.250 0.000 0.050 0.100 0.150 0.200 0.250 0.000 0.050 0.100 0.150 0.200 0.250];
y = [0.300 0.300 0.300 0.300 0.300 0.300 0.500 0.500 0.500 0.500 0.500 0.500 0.700 0.700 0.700 0.700 0.700 0.700 0.900 0.900 0.900 0.900 0.900 0.900];
z1 = [6.647 5.503 4.889 4.603 4.401 4.381 5.079 4.272 3.774 3.513 3.353 3.257 4.020 3.395 3.011 2.810 2.687 2.616 3.270 2.805 2.519 2.370 2.281 2.230];
z2 = [11.735 9.343 8.041 7.373 6.906 6.775 8.071 6.564 5.638 5.134 4.824 4.646 5.942 4.875 4.225 3.881 3.679 3.562 4.612 3.865 3.415 3.184 3.049 2.971];
z3 = [17.876 14.303 12.322 11.284 10.533 10.276 12.228 9.952 8.536 7.744 7.232 6.905 8.856 7.253 6.260 5.711 5.365 5.153 6.729 5.614 4.925 4.549 4.318 4.185];
z4 = [25.114 20.194 17.465 16.042 15.004 14.647 17.046 13.928 11.981 10.889 10.175 9.707 12.170 9.997 8.641 7.886 7.400 7.089 9.047 7.554 6.626 6.110 5.784 5.582];

% 创建新图形窗口
fig = figure('Position', [50, 50, 800, 600]);

% 绘制第一个曲面
[X1, Y1] = meshgrid(linspace(min(x), max(x), 100)', linspace(min(y), max(y), 100));
Z1 = griddata(x, y, z1, X1, Y1);
surf(X1, Y1, Z1);
zlim([0, 65]); % 设置 y 轴范围为 [0, 65]
title('Surface 1', 'FontSize', 14);
xlabel('X', 'FontSize', 12);
ylabel('Y', 'FontSize', 12);
zlabel('Z', 'FontSize', 12);
colorbar;

hold on; % 添加这行代码

% 绘制第二个曲面
[X2, Y2] = meshgrid(linspace(min(x), max(x), 100)', linspace(min(y), max(y), 100));
Z2 = griddata(x, y, z2, X2, Y2);
surf(X2, Y2, Z2);
zlim([0, 65]); % 设置 y 轴范围为 [0, 65]
title('Surface 2', 'FontSize', 14);
xlabel('X', 'FontSize', 12);
ylabel('Y', 'FontSize', 12);
zlabel('Z', 'FontSize', 12);
colorbar;

hold on; % 添加这行代码

% 绘制第三个曲面
[X3, Y3] = meshgrid(linspace(min(x), max(x), 100)', linspace(min(y), max(y), 100));
Z3 = griddata(x, y, z3, X3, Y3);
surf(X3, Y3, Z3);
zlim([0, 65]); % 设置 y 轴范围为 [0, 65]
title('Surface 2', 'FontSize', 14);
xlabel('X', 'FontSize', 12);
ylabel('Y', 'FontSize', 12);
zlabel('Z', 'FontSize', 12);
colorbar;

hold on; % 添加这行代码

% 绘制第四个曲面
[X4, Y4] = meshgrid(linspace(min(x), max(x), 100)', linspace(min(y), max(y), 100));
Z4 = griddata(x, y, z4, X4, Y4);
surf(X4, Y4, Z4);
zlim([0, 65]); % 设置 y 轴范围为 [0, 65]
title('Surface 2', 'FontSize', 14);
xlabel('X', 'FontSize', 12);
ylabel('Y', 'FontSize', 12);
zlabel('Z', 'FontSize', 12);
colorbar;

% 设置图形属性
sgtitle('Two Surfaces in One 3D Plot', 'FontSize', 16); % 设置总标题
set(gcf,'Renderer','OpenGL'); % 设置渲染器
set(gca,'FontName','Arial'); % 设置字体
set(gca,'FontSize',12); % 设置字体大小
set(gcf,'color','w'); % 设置图形背景色为白色




