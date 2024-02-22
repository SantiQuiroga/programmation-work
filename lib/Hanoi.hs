module Hanoi (hanoiValidate) where

type Move = (String, String)

-- Solves the Tower of Hanoi puzzle for a given number of disks.
-- 
-- The 'hanoi' function takes four arguments:
-- * The number of disks to be moved.
-- * The name of the source peg.
-- * The name of the auxiliary peg.
-- * The name of the destination peg.
-- 
-- It returns a list of pairs representing the moves to solve the puzzle.
-- Each pair consists of the name of the source peg and the name of the destination peg.
hanoi :: Int -> String -> String -> String -> [(String, String)]
hanoi 0 _ _ _ = []
hanoi n a b c = hanoi (n - 1) a c b ++ [(a, c)] ++ hanoi (n - 1) b a c

hanoiValidate :: Int -> String -> String -> String -> [(String, String)]
hanoiValidate n a b c
  | n < 0 = error "Number of disks must be non-negative"
  | n > 10 = error "Number of disks must be less than or equal to 10"
  | a == b || a == c || b == c = error "Rod names must be distinct"
  | a == "" || b == "" || c == "" = error "Rod names must be non-empty"
  | otherwise = hanoi n a b c
