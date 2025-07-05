function [player1, player2, boardSize, winLength] = initializeGame()
    %% Funtion to get all informations to initialize game
    player1 = getString('Enter Player 1 name (X): ');
    player2 = getString('Enter Player 2 name (O): ');
    [boardSize, winLength] = getGameSettings();
end