module BookExercises.Parenthesise where

-- Parenthesise the following numeric expressions:
-- 2^3*4
-- 2*3+4*5
-- 2+3*4^5

operation1 :: Integer
operation1 = (2 ^ (3 :: Integer)) * 4

operation2 :: Int
operation2 = (2 * 3) + ( 4 * 5)

operation3 :: Integer
operation3 = 2 + ( 3 * (4 ^ (5 :: Integer)))

