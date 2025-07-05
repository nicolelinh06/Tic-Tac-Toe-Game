function tic_tac_toe_v1()
    %% 1st version: set up game - include draw board, get player names
    % Clear and close previous code in the command window
    clc;
    close all;
    clear all;

    % Display welcome
    disp('=============================');
    disp(' Welcome to Tic-Tac-Toe Game!');
    disp('=============================');

    % Initialize game
    player1 = getString('Enter Player 1 name (X): ');
    player2 = getString('Enter Player 2 name (O): ');

    % Choose board size
    disp('Choose board size:');
    disp('1. Classic: 3 x 3');
    disp('2. Extended: 5 x 5');
    disp('3. Custom');
    choice = getPositiveInt('Enter your choice (1, 2 or 3): ');

    if choice == 1
        boardSize = 3;
    elseif choice == 2
        boardSize = 5;
    elseif choice == 3
        boardSize = getPositiveInt("Enter a positive number for the board size (3 - 10): ");
    else
        disp('Invalid input, defaulting to 3x3.');
        boardSize = 3;
    end

    % Check if board size valid:
    if boardSize < 3 || boardSize > 10
        disp('Invalid input, defaulting to 3x3.');
        boardSize = 3;
    end

    % Choose win length
    winLength = getPositiveInt('Enter win length (e.g. 3 for 3-in-a-row): ');

    % Check if win length is smaller than or equal to board size
    while winLength > boardSize
        disp('Invalid win length. Win length must be smaller than or equal to board size.');
        winLength = getPositiveInt('Enter win length (e.g. 3 for 3-in-a-row): ');
    end
    
    % Print initial values
    fprintf('\n--- Game Settings ---\n');
    fprintf('Player 1: %s (X)\n', player1);
    fprintf('Player 2: %s (O)\n', player2);
    fprintf('Board Size: %d x %d\n', boardSize, boardSize);
    fprintf('Win Length: %d\n', winLength);

    % Draw the grid
    drawGrid(boardSize);
end
