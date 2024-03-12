% Создание нового графического окнаfigure;
% Определение координат прямоугольников (блоков)
block1_x = 0.1;block1_y = 0.5;
block2_x = 0.4;block2_y = 0.5;
block3_x = 0.7;block3_y = 0.5;
% Рисование прямоугольников (блоков)
rectangle('Position', [block1_x-0.05 block1_y-0.1 0.1 0.2], 'EdgeColor', 'k', 'FaceColor', 'w');rectangle('Position', [block2_x-0.05 block2_y-0.1 0.1 0.2], 'EdgeColor', 'k', 'FaceColor', 'w');
rectangle('Position', [block3_x-0.05 block3_y-0.1 0.1 0.2], 'EdgeColor', 'k', 'FaceColor', 'w');
% Добавление текста к блокамtext(block1_x, block1_y, 'Encryption');
text(block2_x, block2_y, 'Authentication');text(block3_x, block3_y, 'Authorization');
% Определение координат стрелок (связей)
arrow1_x = [block1_x+0.05 block2_x-0.05];arrow1_y = [block1_y block2_y];
arrow2_x = [block2_x+0.05 block3_x-0.05];arrow2_y = [block2_y block3_y];
% Рисование стрелок (связей)
annotation('arrow',arrow1_x,arrow1_y);annotation('arrow',arrow2_x,arrow2_y);
% Добавление подписей к стрелкам
text(mean(arrow1_x), mean(arrow1_y), 'Data Flow', 'HorizontalAlignment', 'center');text(mean(arrow2_x), mean(arrow2_y), 'Data Flow', 'HorizontalAlignment', 'center');
% Установка осей
axis off;
% Добавление заголовкаtitle('Data Security and Access Control Architecture');
