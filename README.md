# Knights-travails
To prove that a knight piece in chess can move to any square on the standard 8x8 chess oard from any other square on the board, given enough turns.
## Task
Build a function knight_moves that shows the shortest possible way to get from one square to another by outputting all squares the knight will stop on along the way

## Issues faced
finding a way to create or implemet the boards
* solution : rathar than think about creating the board, have just the squares know their position and, future moves and past moves, and ristrict the knight from playing onto an invalid square (out of bounds)

Deciding to use a node class for the knight
* solution: decided to use simple functions for the knight class and the breath first search, not to overcomplicate things and create unnecessary files