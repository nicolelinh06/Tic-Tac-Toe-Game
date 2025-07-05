function tic_tac_toe_final()
    %% Final version of the tic-tac-toe game: Refactored code into functions, polish all the versions, add replay
    clc;
    close all;
    clear;

    disp('=============================');
    disp(' Welcome to Tic-Tac-Toe Game!');
    disp('=============================');

    % Initialize game
    [player1, player2, boardSize, winLength] = initializeGame();
    scores = [0, 0];

    playAgain = true;

    while playAgain
        % Play game once
        winner = playOneGame(player1, player2, boardSize, winLength);

        % Update scores
        if winner == 1
            scores(1) = scores(1) + 1;
        elseif winner == 2
            scores(2) = scores(2) + 1;
        end

        % Show score
        fprintf('\nScores\n%s (X): %d\n%s (O): %d\n', ...
            player1, scores(1), player2, scores(2));

        % Ask for rematch
        while true
            rematch = lower(getString('Do you want to play again? (yes/no): '));
    
            if strcmp(rematch, 'yes')
                playAgain = true;
                break;
            elseif strcmp(rematch, 'no')
                playAgain = false;
                disp('Thanks for playing!');
                break;
            else
                disp('Invalid input. Please type "yes" or "no".');
            end
        end
    end
end
