-- Example of how to define and use the Y combinator:
module YCombinatorExamples where

-- The Y combinator:
yCombinator :: (a -> a) -> a
yCombinator f = let x = f x in x

-- Recursive function definition using the Y combinator:
factorial :: Integer -> Integer
factorial = yCombinator (\rec n -> if n == 0 then 1 else n * rec (n - 1))

main :: IO ()
main = do
  putStrLn "Factorial of 5:"
  print (factorial 5)

-- The "yCombinator" function is used to define a recursive "factorial" function. 
-- The "factorial" function is then used in the `main` function to calculate the factorial of 5.
