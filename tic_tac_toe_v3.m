function tic_tac_toe_v3()
    %% 3rd version: Added win detection logic
    clc;
    close all;
    clear all;
    
    % Welcome message
    disp('=============================');
    disp(' Welcome to Tic-Tac-Toe Game!');
    disp('=============================');

    % Initialize game
    [player1, player2, boardSize, winLength] = initializeGame();
    % Create a matrix along with a grid
    board = zeros(boardSize);
    drawGrid(boardSize);

    currentPlayer = 1;  % 1 = X, 2 = O
    totalTurns = boardSize^2;  % Max number of moves

    for turn = 1:totalTurns
        % Set player info
        if currentPlayer == 1
            name = player1;
            symbol = 'X';
        else
            name = player2;
            symbol = 'O';
        end

        % Show message
        disp('Click on the grid to choose where you want to place your move.');
        pause(1.5);
        title(sprintf("%s's Turn (%s)", name, symbol), 'FontSize', 15);

        % Get valid move
        [row, col] = getValidMove(board, boardSize);
        board(row, col) = currentPlayer;

        % Plot the move
        plotMove(row, col, boardSize, currentPlayer);

        % Check win
        if check_win(board, currentPlayer, winLength)
            title(sprintf("%s Wins!", name), 'FontSize', 15, 'Color', 'k');
            fprintf("%s Wins!\n", name);
            return;  % ends code
        end

        % Switch player
        currentPlayer = 3 - currentPlayer;
    end
    
    % Check if game is draw
    title('Game Draw!', 'FontSize', 15, 'Color', 'k');
    disp('Game Draw!\n');
end