# kinghunt

A chess puzzle solver and maker written in Rust.

kinghunt works with **directmates**: White moves first and forces checkmate
in a given number of moves against any defence. Puzzles use the standard
pieces and the standard rules of chess.

## Solver

Given a position in
[FEN](https://en.wikipedia.org/wiki/Forsyth%E2%80%93Edwards_Notation) and the
number of moves in which mate has to be delivered (_stipulation_), the solver
finds every solution and shows the full solution tree:

- the **key** move and any **threat**
- **variations**: each Black defence and White's reply
- **tries** and their **refutations**

It also reports when a puzzle is unsound:

- **cooks**: more than one key
- **no solution**

and when it has **duals**: more than one White reply to a Black defence.

## Maker

The maker creates new directmate puzzles: legal positions with a unique
key that forces mate in the given number of moves.
