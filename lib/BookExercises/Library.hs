module BookExercises.Library where

-- The library function last selects the last element of a non-empty list; for example, last
-- [1,2,3,4,5] = 5. Show how the function last could be defined in terms of the other library
-- functions introduced in this chapter. Can you think of another possible definition?

last :: [a] -> a
last xs = head (reverse xs)

-- The library function init removes the last element from a non-empty list; for example, init
-- [1,2,3,4,5] = [1,2,3,4]. Show how init could similarly be defined in two different ways.

-- Take and length:
init1 :: [a] -> [a]
init1 xs = take (length xs - 1) xs

-- List comprehension:
init2 :: [a] -> [a]
init2 xs = [xs !! i | i <- [0..length xs - 2]]
