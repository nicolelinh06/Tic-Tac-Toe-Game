function plotMove(row, col, boardSize, currentPlayer)
    %% Function to plot move
    cx = col - 0.5;  % Go to middle of the cell horizontally
    cy = boardSize - row + 0.5;  % Go to middle of the cell vertically

    if currentPlayer == 1
        plot(cx, cy, 'rx', 'MarkerSize', 30, 'LineWidth', 3);
    else
        plot(cx, cy, 'bo', 'MarkerSize', 20, 'LineWidth', 3);
    end
end