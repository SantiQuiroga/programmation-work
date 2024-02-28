module Day26Month02.Split(split) where

    split :: String -> Char -> [String]
    split [] _ = []
    split (x:xs) c 
        | x == c = split xs c
        | otherwise = (x : takeWhile (/= c) xs) : split (dropWhile (/= c) xs) c