module Main where
import Hanoi (hanoiValidate)

main :: IO()
main = do
  putStrLn "Enter the number of disks:"
  disks <- getLine
  putStrLn "Enter the name of the source rod:"
  source <- getLine
  putStrLn "Enter the name of the auxiliary rod:"
  auxiliary <- getLine
  putStrLn "Enter the name of the destination rod:"
  destination <- getLine
  print(hanoiValidate (read disks) source auxiliary destination)