% 绘制折线图
figure;

set(gca,'FontName','Times new roman');
set(gca,'FontSize',20);
plot(x, y, 'LineWidth', 2, 'Marker', '^', 'MarkerSize', 10, 'MarkerFaceColor', 'y');
xlabel('Time （day）');
ylabel('Concentration （cell/mL）');
title(filename);


set(gca, 'YTickLabel', get(gca, 'YTick'));

set(gca, 'FontSize', 20);
