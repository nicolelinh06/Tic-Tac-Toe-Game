function win = check_win(board, player, winLength)
    %% Function to check if current player win
    [rows, cols] = size(board);
    win = false;

    for r = 1:rows
        for c = 1:cols
            if board(r, c) ~= player % Check if cell belong t
                continue;
            end

            % Horizontal: Check if cells from same player
            if c + winLength - 1 <= cols
                if all(board(r, c:c+winLength-1) == player)
                    win = true; 
                    return;  % quit function
                end
            end

            % Vertical: Check if cells from same player
            if r + winLength - 1 <= rows
                if all(board(r:r+winLength-1, c) == player)
                    win = true; 
                    return;
                end
            end

            % Diagonal down ↘: Check if cells from same player
            if r + winLength - 1 <= rows && c + winLength - 1 <= cols
                samePlayer = true;
                for i = 0:winLength-1
                    if board(r+i, c+i) ~= player
                        samePlayer = false;
                        break;
                    end
                end
                
                if samePlayer
                    win = true; 
                    return;
                end
            end

            % Diagonal up ↗: Check if cells from same player
            if r - winLength + 1 >= 1 && c + winLength - 1 <= cols
                samePlayer = true;
                for i = 0:winLength-1
                    if board(r-i, c+i) ~= player
                        samePlayer = false;
                        break;
                    end
                end
                
                if samePlayer
                    win = true; 
                    return;
                end
            end
        end
    end
end