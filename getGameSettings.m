function [boardSize, winLength] = getGameSettings()
    %% Get game settings from users
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
    while winLength > boardSize || winLength < 3
        fprintf('Invalid input.');
        if winLength > boardSize
            fprintf(' Win length must be smaller than or equal to board size.\n');
        elseif winLength < 3
            fprintf(' Win length must be higher than 3.\n');
        end
        winLength = getPositiveInt('Enter win length (e.g. 3 for 3-in-a-row): ');
    end
end