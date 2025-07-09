# Tic-Tac-Toe Scenarios

## 1: Start a New Game
**Given** the game is ready to play,  
**When** a player selects the "New Game" button,  
**Then** the game should display an empty 3x3 grid and allow the player to choose between "X" and "O".

## 2: Make a Valid Move
**Given** the player has started a new game and the grid is empty,  
**When** the player clicks on an empty square to place their mark,  
**Then** the square should display the player's mark and the turn should change to the next player.

## 3: Check for a Winner
**Given** a player has made a move,  
**When** after each move, the system checks the rows, columns, and diagonals,  
**Then** the system should declare the player as the winner if there are three consecutive marks in a row, column, or diagonal.

## 4: Tie Game
**Given** all the squares are filled,  
**When** there is no winner after all the moves,  
**Then** the system should declare a tie.

## 5: Restart the Game
**Given** the game has finished (either with a winner or a tie),  
**When** the player clicks the "Restart" button,  
**Then** the grid should reset to an empty state and the game should allow the player to select "X" and "O" again.

## 6: Local Multiplayer Mode
**Given** there are two players,  
**When** both players make their moves on the grid,  
**Then** the game should alternate between players and display their mark correctly in the squares.

## 7: Play Against the Computer
**Given** the player selects to play against the computer,  
**When** the player makes their move and the computer responds,  
**Then** the computer should make a valid move and challenge the player, showing the game state after each turn.