module BookExercises.SyntacticErrors where

-- The script below contains three syntactic errors. Correct these errors and then check that your
-- script works properly using GHCi.
-- N = a ’div’ length xs
-- where
-- a = 10
-- xs = [1,2,3,4,5]

    myFunction :: Int
    myFunction = n
      where
        n = a `div` length xs
        a = 10
        xs = [1,2,3,4,5] :: [Int]
