module Main where
import Hanoi (hanoiValidate)

-- The main function prompts the user to enter the number of disks, the names of the source, auxiliary, and destination rods,
-- and then calls the 'hanoiValidate' function to validate the move of disks in the Tower of Hanoi puzzle.

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
