module QuickSort(quicksort) where

quicksort :: (Ord s) => [s] -> [s]
quicksort [] = []
quicksort (x:xs) =
  let smaller = quicksort [a | a <- xs, a <= x]
      bigger = quicksort [a | a <- xs, a > x]
  in  smaller ++ [x] ++ bigger