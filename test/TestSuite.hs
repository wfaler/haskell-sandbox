import Data.Monoid
import Test.Framework
import Test.Framework.Providers.HUnit
import Test.Framework.Providers.QuickCheck2
import Test.HUnit
import Test.QuickCheck

import Recursivity.Sandbox

main :: IO ()
main = defaultMainWithOpts
       [ testCase "rev" testRev
       , testCase "add" testAdd
       , testProperty "listRevRevId" propListRevRevId
       ] mempty

testRev :: Assertion
testRev = reverse [1, 2, 3] @?= [3, 2, 1]

testAdd :: Assertion
testAdd = addStuff 3 2 @?= 6

propListRevRevId :: [Int] -> Property
propListRevRevId xs = not (null xs) ==> reverse (reverse xs) == xs