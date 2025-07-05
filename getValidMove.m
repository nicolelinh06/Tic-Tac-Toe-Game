function [row, col] = getValidMove(board, boardSize)
    %% Function to get valid move
    validMove = false;
    while ~validMove
        [x, y] = ginput(1); % Waits for the user to click once
        % Matrices index go from the top-left, while plot go from bottom-left.
        col = floor(x) + 1;
        row = boardSize - floor(y);
        
        if row >= 1 && row <= boardSize && col >= 1 && col <= boardSize  % Check if in grid 
            if board(row, col) == 0
                validMove = true;
            else
                disp('Cell already taken. Click another cell.');
            end
        else
            disp('Click inside the grid!');
        end
    end
end