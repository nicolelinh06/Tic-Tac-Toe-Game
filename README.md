# MATLAB Tic Tac Toe Game

A fully functional and interactive Tic Tac Toe game developed in MATLAB with customizable board size and win length. This project demonstrates strong programming fundamentals and incremental development practices.

## Features

- Two-player gameplay with alternating turns.
- Customizable board size and win length.
- Interactive graphical user interface using mouse input (`ginput`).
- Real-time game status updates including win detection and score tracking.
- User-friendly input validation for names, board size, and win length.
- Modular design with multiple well-documented functions for clarity and maintainability.

## Conceptual Coverage

This project showcases the application of key MATLAB programming concepts:

- **Input/Output:** User inputs for player names, board size, and winning line length.
- **Loops:** Use of `for` loops to manage game turns and `while` loops for control flow.
- **Matrices:** Board state stored and managed using matrices.
- **Conditionals:** Input validation and win condition checks.
- **Functions:** Modular codebase with functions such as `drawGrid`, `initializeGame`, `plotMove`, and `check_win`.

## Development Process

The game was developed incrementally in distinct stages:

1. **Grid Drawing:** `drawGrid.m` displays the game board based on user input.
2. **Game Initialization:** `initializeGame.m` and `getGameSettings.m` handle user inputs with validation (`getPositiveInt.m` and `getString.m`).
3. **Player Moves:** `getValidMove.m` captures and translates mouse clicks into board positions.
4. **Move Plotting:** `plotMove.m` visually places player marks on the board.
5. **Win Checking:** `check_win.m` determines if a player has met the winning conditions.

Each stage was saved as a separate `.m` file with comprehensive comments.

## How to Run

1. Open MATLAB and navigate to the project folder.
2. Run the main script (`tic_tac_toe_final.m`).
3. Follow the prompts to input player names, choose board size and win length.
4. Play by clicking on the board cells.
5. Track scores and decide whether to continue after each round.

---

Feel free to explore the codebase and reach out if you have questions or feedback!