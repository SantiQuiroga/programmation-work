{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Use foldr" #-}
{-# HLINT ignore "Avoid lambda using infix" #-}

module Evaluation
  ( meanAge,
    parseStudents,
    parseStudentNames,
    youngerThan,
    ageInRange,
    studentList,
  )
where

import Data.List.Split (splitOn)

type Learner = (String, Int)

isSpaceChar :: Char -> Bool
isSpaceChar x
  | x == ' ' = True
  | otherwise = False

isNotSpaceChar :: Char -> Bool
isNotSpaceChar x
  | x /= ' ' = True
  | otherwise = False

isNotCommaChar :: Char -> Bool
isNotCommaChar x
  | x /= ',' = True
  | otherwise = False

sumAges :: [Learner] -> Int
sumAges [] = 0
sumAges (x : xs) = snd x + sumAges xs

meanAge :: [Learner] -> Float
meanAge [] = 0
meanAge xs = fromIntegral (sumAges xs) / fromIntegral (length xs)

parseStudentNames :: String -> [String]
parseStudentNames [] = []
parseStudentNames xs = name : parseStudentNames next
  where
    name = takeWhile isNotSpaceChar xs
    rest = dropWhile isSpaceChar (dropWhile isNotSpaceChar xs)
    next = dropWhile isSpaceChar (dropWhile isNotSpaceChar rest)

parseStudents :: String -> [Learner]
parseStudents [] = []
parseStudents xs = (name, age) : parseStudents next
  where
    name = takeWhile isNotSpaceChar xs
    rest = dropWhile isSpaceChar (dropWhile isNotSpaceChar xs)
    age = read (takeWhile isNotCommaChar rest)
    next = dropWhile isSpaceChar (dropWhile isNotSpaceChar rest)

studentList :: String -> [(String, Int)]
studentList "" = []
studentList s = tuples
  where
    firstList = splitOn s ","
    secondList = map (`splitOn` " ") firstList
    tuples = map (\[[x], [y]] -> ([x], read [y])) secondList

youngerThan :: [Learner] -> Int -> [Learner]
youngerThan [] _ = []
youngerThan (x : xs) less =
  do
    if snd x < less
      then x : youngerThan xs less
      else youngerThan xs less

ageInRange :: [Learner] -> Int -> Int -> [Learner]
ageInRange [] _ _ = []
ageInRange (x : xs) minAge maxAge =
  do
    if snd x >= minAge && snd x <= maxAge
      then x : ageInRange xs minAge maxAge
      else ageInRange xs minAge maxAge
      