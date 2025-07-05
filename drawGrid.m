function drawGrid(boardSize)
    %% Draws a grid with input size
    % Properties of the board
    figure('Name', 'Tic Tac Toe', 'NumberTitle', 'off'); 
    
    % Set the axis limits and make grid cells square
    axis([0 boardSize 0 boardSize]);
    axis square;

    % Set x and y ticks and hide tick labels
    xticks(0:1:boardSize);
    yticks(0:1:boardSize); 
    set(gca, 'XTickLabel', [], 'YTickLabel', []);
    
    % Enable grid lines and keep current plot to add
    grid on;  
    hold on;
    
    % Draw lines for grid
    for i = 1:1:boardSize-1
        % Horizontal lines at y = i
        line([0 boardSize], [i i], 'Color', 'k', 'LineWidth', 1);  
        
        % Vertical lines at x = i
        line([i i], [0 boardSize], 'Color', 'k', 'LineWidth', 1);  
    end
end