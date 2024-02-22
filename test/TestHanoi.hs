import Hanoi (hanoiValidate)
import Test.QuickCheck (Property, property, (===), quickCheck)

-- Property to test hanoiValidate function with 1 disk
one :: Property
one = property $ hanoiValidate 1 "a" "b" "c" === [("a", "c")]

-- Property to test hanoiValidate function with 2 disks
two :: Property
two = property $ hanoiValidate 2 "a" "b" "c" === [("a", "b"), ("a", "c"), ("b", "c")]

-- Property to test hanoiValidate function with 3 disks
three :: Property
three = property $ hanoiValidate 3 "a" "b" "c" === [("a", "c"), ("a", "b"), ("c", "b"), ("a", "c"), ("b", "a"), ("b", "c"), ("a", "c")]

-- Property to test hanoiValidate function with 4 disks
four :: Property
four = property $ hanoiValidate 4 "a" "b" "c" === [("a", "b"), ("a", "c"), ("b", "c"), ("a", "b"), ("c", "a"), ("c", "b"), ("a", "b"), ("a", "c"), ("b", "c"), ("b", "a"), ("c", "a"), ("b", "c"), ("a", "b"), ("a", "c"), ("b", "c")]

-- Property to test hanoiValidate function with 5 disks
five :: Property
five = property $ hanoiValidate 5 "a" "b" "c" === [("a", "c"), ("a", "b"), ("c", "b"), ("a", "c"), ("b", "a"), ("b", "c"), ("a", "c"), ("a", "b"), ("c", "b"), ("c", "a"), ("b", "a"), ("c", "b"), ("a", "c"), ("a", "b"), ("c", "b"), ("a", "c"), ("b", "a"), ("b", "c"), ("a", "c"), ("b", "a"), ("c", "b"), ("c", "a"), ("b", "a"), ("b", "c"), ("a", "c"), ("a", "b"), ("c", "b"), ("a", "c"), ("b", "a"), ("b", "c"), ("a", "c")]

-- Main function to run the unit tests
main :: IO ()
main = do
  quickCheck one >> quickCheck two >> quickCheck three >> quickCheck four >> quickCheck five
  return ()
