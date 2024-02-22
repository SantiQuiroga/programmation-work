module Hanoi (hanoiValidate) where

-- Solves the Tower of Hanoi puzzle for a given number of disks and rod names.
-- The function takes four arguments:
--   - The number of disks (n)
--   - The name of the source rod (a)
--   - The name of the auxiliary rod (b)
--   - The name of the destination rod (c)
--   It returns a list of tuples representing the moves required to solve the puzzle.
--   Each tuple contains the name of the source rod and the name of the destination rod.

hanoi :: Int -> String -> String -> String -> [(String, String)]
hanoi 0 _ _ _ = []
hanoi n a b c = hanoi (n - 1) a c b ++ [(a, c)] ++ hanoi (n - 1) b a c

--   The function performs validation checks on the input arguments and throws an error
--   if any of the conditions are not met.

hanoiValidate :: Int -> String -> String -> String -> [(String, String)]
hanoiValidate n a b c
  | n < 0 = error "Number of disks must be non-negative"
  | n > 10 = error "Number of disks must be less than or equal to 10"
  | a == b || a == c || b == c = error "Rod names must be distinct"
  | a == "" || b == "" || c == "" = error "Rod names must be non-empty"
  | otherwise = hanoi n a b c
