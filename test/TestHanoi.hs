import Hanoi (hanoi)
import Test.Tasty (TestTree, defaultMain, testGroup)
import Test.Tasty.HUnit (assertEqual, testCase)

one :: TestTree
one = testCase "1 Disc" $ assertEqual [] (hanoi 1 "a" "b" "c") [("a", "c")]

two :: TestTree
two = testCase "2 Discs" $ assertEqual [] (hanoi 2 "a" "b" "c") [("a", "b"), ("a", "c"), ("b", "c")]

three :: TestTree
three = testCase "3 Discs" $ assertEqual [] (hanoi 3 "a" "b" "c") [("a", "c"), ("a", "b"), ("c", "b"), ("a", "c"), ("b", "a"), ("b", "c"), ("a", "c")]

four :: TestTree
four = testCase "4 Discs" $ assertEqual [] (hanoi 4 "a" "b" "c") [("a", "b"), ("a", "c"), ("b", "c"), ("a", "b"), ("c", "a"), ("c", "b"), ("a", "b"), ("a", "c"), ("b", "c"), ("b", "a"), ("c", "a"), ("b", "c"), ("a", "b"), ("a", "c"), ("b", "c")]

five :: TestTree
five = testCase "5 Discs" $ assertEqual [] (hanoi 5 "a" "b" "c") [("a", "c"), ("a", "b"), ("c", "b"), ("a", "c"), ("b", "a"), ("b", "c"), ("a", "c"), ("a", "b"), ("c", "b"), ("c", "a"), ("b", "a"), ("c", "b"), ("a", "c"), ("a", "b"), ("c", "b"), ("a", "c"), ("b", "a"), ("b", "c"), ("a", "c"), ("b", "a"), ("c", "b"), ("c", "a"), ("b", "a"), ("b", "c"), ("a", "c"), ("a", "b"), ("c", "b"), ("a", "c"), ("b", "a"), ("b", "c"), ("a", "c")]

hanoiTests :: TestTree
hanoiTests = testGroup "Hanoi tests" [one, two, three, four, five]

main :: IO ()
main = defaultMain hanoiTests