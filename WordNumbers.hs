module WordNumber where

import Data.List (intercalate)


digitToWord :: Int -> String
digitToWord n
  | n == 0 = "zero"
  | n == 1 = "one"
  | n == 2 = "two"
  | n == 3 = "three"
  | n == 4 = "four"
  | n == 5 = "five"
  | n == 6 = "six"
  | n == 7 = "seven"
  | n == 8 = "eight"
  | n == 9 = "nine"
  | otherwise = error "NOT A DIGIT!" -- How to handle without runtime error?


digits :: Int -> [Int]
digits n
  | n < 10  = [n]
  | n >= 10 =
    let
      last_digit = mod n 10
      rest_digits = div n 10
      in
        digits rest_digits ++ [last_digit]
  | otherwise = error "CRASH!" -- How to handle without runtime error


wordNumber :: Int -> String
wordNumber n = intercalate "-" ws
  where
    ds = digits n
    ws = map digitToWord ds
