Minesweeper: Ruby
===============================================================================

Write a Minesweeper Game

- Squares can either hold a mine, 1, 2, 3, 4, or nothing
- Number signify how many mines it touches, adjacently


Mindset
-----------------


First I thought about the different components of the game

### Square

There is each square, which holds a value of either nothing, a number of how many mines it is touching, or a mine.

A square can be marked
A square can be flagged
A square has cordinates on the board.

### Board

The board holds all the squares and is essentially the sqaure manager, or a two dimentional collection of squares.

This will have a width and a height, which is represented by a two dimensional array.

board\[0\]\[0\] = top left corner square of the board

### Gamemaster

This will be in charge of the CLI entries and making sure that it passes the correct messages to the Board