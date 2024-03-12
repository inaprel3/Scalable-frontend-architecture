% Create a directed graph objectG = digraph;
% Define nodes representing modules
modules = {'Module 1', 'Module 2', 'Module 3', 'Module 4', 'Module 5', 'Module 6', 'Module 7'};
% Add nodes to the graphG = addnode(G, modules);
% Define edges between modules
edges = {'Module 1', 'Module 2'; 'Module 1', 'Module 3'; 'Module 1', 'Module 4'; ...         'Module 2', 'Module 5'; 'Module 2', 'Module 6'; 'Module 3', 'Module 7'; ...
         'Module 4', 'Module 7'};
% Add edges to the graphG = addedge(G, edges(:, 1), edges(:, 2));
% Plot the graph
figure;h = plot(G, 'Layout', 'layered', 'Direction', 'down');
% Set node colors
h.NodeColor = 'w';
% Set node labelsh.NodeLabel = G.Nodes.Name;
% Set node font size and weight
h.NodeFontSize = 12;h.NodeFontWeight = 'bold';
% Set edge arrows
h.ArrowSize = 10;h.LineWidth = 2;
% Set title
title('Modular Architecture of Front-end Interface');
