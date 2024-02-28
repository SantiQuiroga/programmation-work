module BookExercises.Examples where

-- Work through the examples from this chapter using GHCi.

  -- Numeric expressions:
  expr1 :: Int
  expr1 = 2 + 3 * 4

  expr2 :: Int
  expr2 = (2 + 3) * 4

  expr3 :: Double
  expr3 = sqrt (3 ^ (2 :: Integer) + 4 ^ (2 :: Integer))

  -- Operations:
  headExample :: Int
  headExample = head [1,2,3,4,5]

  tailExample :: [Int]
  tailExample = tail [1,2,3,4,5]

  indexExample :: Int
  indexExample = [1,2,3,4,5] !! 2

  takeExample :: [Int]
  takeExample = take 3 [1,2,3,4,5]

  dropExample :: [Int]
  dropExample = drop 3 [1,2,3,4,5]

  lengthExample :: Int
  lengthExample = length ([1,2,3,4,5] :: [Integer])
  
  sumExample :: Int
  sumExample = sum [1,2,3,4,5]

  productExample :: Int
  productExample = product [1,2,3,4,5]

  concatExample :: [Int]
  concatExample = [1,2,3] ++ [4,5]

  reverseExample :: [Int]
  reverseExample = reverse [1,2,3,4,5]
