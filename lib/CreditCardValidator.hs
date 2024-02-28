module CreditCardValidator where
  -- Convert Integer to list of digits
toDigits :: Int -> [Int]
toDigits n | n < 10 = [n]
           | n < 0 = []
           | otherwise = toDigits (div n 10) ++ [mod n 10]

-- Convert Integer to reversed list of digits
toDigitsRev :: Int -> [Int]
toDigitsRev n | n < 10 = [n]
              | n < 0 = []
              | otherwise = mod n 10 : toDigitsRev (div n 10)

-- Double every other number beginning from the right
-- doubleEveryOther :: [Int] -> [Int]
-- doubleEveryOther (x:y:xs) =  x : 2 * y : doubleEveryOther xs

-- Calculate the sum of all digits
sumDigits :: [Int] -> Int
sumDigits [] = 0
sumDigits (x:xs)
  | x < 10 = x + sumDigits xs
  | otherwise = aux x + sumDigits xs

aux :: Int -> Int
aux 0 = 0
aux x = mod x 10 + aux (div x 10)

getmod :: Int -> Bool
getmod n = n `mod` 10 == 0

-- Validate a credit card number
-- validate :: Int -> Bool
-- validate n = getmod . sumDigits . doubleEveryOther . toDigitsRev
