% Creating a new graphical window 
figure; 
 
% Defining the coordinates of nodes (in normalized coordinates) 
x = [0.2 0.8 0.2 0.8]; 
y = [0.8 0.8 0.2 0.2]; 
 
% Drawing blocks (nodes) 
for i = 1:numel(x) 
rectangle('Position', [x(i)-0.1, y(i)-0.1, 0.2, 0.2], 'EdgeColor', 'k', 'LineWidth', 2, 'Curvature', [0.2, 0.2]); 
text(x(i), y(i), sprintf('Method %d', i), 'HorizontalAlignment', 'center', 'VerticalAlignment', 'middle'); 
end 
 
% Adding arrows (connections) between nodes 
annotation('arrow', [x(1), x(2)], [y(1), y(2)], 'HeadWidth', 0.05, 'HeadLength', 0.05, 'LineWidth', 2); 
annotation('arrow', [x(1), x(3)], [y(1), y(3)], 'HeadWidth', 0.05, 'HeadLength', 0.05, 'LineWidth', 2); 
annotation('arrow', [x(2), x(4)], [y(2), y(4)], 'HeadWidth', 0.05, 'HeadLength', 0.05, 'LineWidth', 2); 
annotation('arrow', [x(3), x(4)], [y(3), y(4)], 'HeadWidth', 0.05, 'HeadLength', 0.05, 'LineWidth', 2); 
 
% Adding text to arrows 
text(mean([x(1), x(2)]), mean([y(1), y(2)]), 'Horizontal Scaling', 'HorizontalAlignment', 'center'); 
text(mean([x(1), x(3)]), mean([y(1), y(3)]), 'Vertical Scaling', 'HorizontalAlignment', 'center'); 
text(mean([x(2), x(4)]), mean([y(2), y(4)]), 'Resource Management', 'HorizontalAlignment', 'center'); 
text(mean([x(3), x(4)]), mean([y(3), y(4)]), 'Request Management', 'HorizontalAlignment', 'center'); 
 
% Setting axis off 
axis off; 
 
% Adding a title 
title('Load Management and Scalability');
