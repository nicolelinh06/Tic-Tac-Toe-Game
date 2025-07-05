function tic_tac_toe_v2()
    %% 2nd version: Implemented click input and player turns
    clc;
    close all;
    clear all;

    % Display welcome
    disp('=============================');
    disp(' Welcome to Tic-Tac-Toe Game!');
    disp('=============================');
    
    [player1, player2, boardSize, winLength] = initializeGame();
    board = zeros(boardSize);
    drawGrid(boardSize);

    currentPlayer = 1;
    totalTurns = boardSize^2;

    for turn = 1:totalTurns
        if currentPlayer == 1
            name = player1; symbol = 'X';
        else
            name = player2; symbol = 'O';
        end

        % Show message
        disp('Click on the grid to choose where you want to place your move.');
        pause(1.5); 
        title(sprintf("%s's Turn (%s)", name, symbol), 'FontSize', 14);

        validMove = false;
        while ~validMove
            [x, y] = ginput(1);  % Waits for the user to click once
            fprintf("User Input: x: %3f, y: %3f\n", x, y);
            % Matrices index go from the top-left, while plot go from bottom-left.
            col = floor(x) + 1;
            row = boardSize - floor(y);

            if row >= 1 && row <= boardSize && col >= 1 && col <= boardSize  % Check if in grid
                if board(row, col) == 0
                    board(row, col) = currentPlayer;
                    validMove = true;

                    cx = col - 0.5; % Go to middle of the cell horizontally
                    cy = boardSize - row + 0.5; % Go to middle of the cell vertically
                    if currentPlayer == 1
                        plot(cx, cy, 'rx', 'MarkerSize', 30, 'LineWidth', 3);
                    else
                        plot(cx, cy, 'bo', 'MarkerSize', 20, 'LineWidth', 3);
                    end
                else
                    disp('Cell already taken.');
                end
            else
                disp('Click inside the grid!');
            end
        end

        currentPlayer = 3 - currentPlayer;  % Switch player
    end
    disp(board);
end
