% Test cases for check_win(board, player, winLength)

fprintf('Test 1: Horizontal win\n');
board = [1 1 1; 0 0 0; 0 0 0];
player = 1;
winLength = 3;
fprintf('Expected output: true (1)\n');
win = check_win(board, player, winLength);
fprintf('Actual output: %d\n\n', win);

fprintf('Test 2: Vertical win\n');
board = [2 0 0; 2 0 0; 2 0 0];
player = 2;
winLength = 3;
fprintf('Expected output: true (1)\n');
win = check_win(board, player, winLength);
fprintf('Actual output: %d\n\n', win);

fprintf('Test 3: Diagonal win ↘\n');
board = [1 0 0; 0 1 0; 0 0 1];
player = 1;
winLength = 3;
fprintf('Expected output: true (1)\n');
win = check_win(board, player, winLength);
fprintf('Actual output: %d\n\n', win);

fprintf('Test 4: No win (random scattered)\n');
board = [1 2 0; 2 1 0; 1 2 0];
player = 1;
winLength = 3;
fprintf('Expected output: false (0)\n');
win = check_win(board, player, winLength);
fprintf('Actual output: %d\n\n', win);

fprintf('End of tests.\n');