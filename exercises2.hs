module Main where

awesome :: [String]
awesome = ["Papuchon", "curry", ":)"]

alsoAwesome :: [String]
alsoAwesome = ["Quake", "The Simons"]

allAwesome :: [[String]]
allAwesome = [awesome, alsoAwesome]

res :: Int
res = div 6 (length [1, 2, 3])

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x =
  x == reverse x

myAbs :: Integer -> Integer
myAbs x =
  if x >= 0 then x else negate x

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f t1 t2 = ((snd t1, snd t2), (fst t1, fst t2))

main :: IO ()
main = putStrLn "Hello World"
