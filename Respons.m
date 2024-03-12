% Create figurefigure;
% Define screen sizes for different devices
screenWidth = 1920; % Screen width in pixelsscreenHeight = 1080; % Screen height in pixels
mobileWidth = 360; % Mobile screen width in pixelstabletWidth = 768; % Tablet screen width in pixels
desktopWidth = 1440; % Desktop screen width in pixels
% Create bar chart with different colors for each devicebar([mobileWidth, tabletWidth, desktopWidth], 'FaceColor', [.5 .5 .5]);
hold on;
% Add labels to the barstext(1, mobileWidth, sprintf('%dpx', mobileWidth), 'HorizontalAlignment', 'center', 'VerticalAlignment', 'bottom');
text(2, tabletWidth, sprintf('%dpx', tabletWidth), 'HorizontalAlignment', 'center', 'VerticalAlignment', 'bottom');text(3, desktopWidth, sprintf('%dpx', desktopWidth), 'HorizontalAlignment', 'center', 'VerticalAlignment', 'bottom');
% Add axis labels and title
xlabel('Device');ylabel('Screen Width (pixels)');
title('Screen Sizes of Different Devices');
% Add legendlegend('Mobile', 'Tablet', 'Desktop');
% Display grid
grid on;
% Set Y-axis limitsylim([0, screenHeight]);

% Set X-axis labelsxticks([1 2 3]);
xticklabels({'Mobile', 'Tablet', 'Desktop'});
% Rotate X-axis labels for better visibilityxtickangle(45);
