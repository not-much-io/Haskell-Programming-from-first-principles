module Ciphers where

import Data.Char


ordA :: Int
ordA = ord 'a'


ordZ :: Int
ordZ = ord 'z'


nrOfLetters :: Int
nrOfLetters = 25


outOfAlphRange :: Int
outOfAlphRange = 26


-- Naive solution


wrapAround :: Int -> Int
wrapAround i
  | i < ordA = wrapAround $ i + outOfAlphRange
  | i > ordZ = wrapAround $ i - outOfAlphRange
  | otherwise = i
  

caesar :: String -> Int -> String
caesar s key =
  map (chr . wrapAround . (+ key) . ord) s


deCaesar :: String -> Int -> String
deCaesar s key =
  caesar s (- key)


-- Robust solution


caesar' :: String -> Int -> Maybe String
caesar' s key =
  if is_not_valid then
    Nothing
  else
    Just (map (chr . wrapAround . (+ key) . ord) s)
  where
    is_alph x =
      x >= ordA && x <= ordZ
    is_not_valid =
      any not [ is_alph x
              | c <- s,
                let x = ord c
              ]


deCaesar' :: String -> Int -> Maybe String
deCaesar' s key =
  caesar' s (- key)


-- Constant time shift solution


shift :: Int -> Int -> Int
shift key i =
  {--
      Subtract ASCII character by start of alphabet (ordA)
           Will result in nr of letter in alphabet (0-25)

      Apply key to do shift
           Will potentially result in a letter out of
           alphabet range (ex. 9999)

      Calc modulo 26
           The full part of a divide would be the number of full wrap arounds
           The remainder thus reflects on which letter the result lands
           If the result is in the alph range, then remains same

      Add start of alph back again
           To get back a valid character code
  --}
  ordA + (mod ((i + key) - ordA) outOfAlphRange)


caesar'' :: String -> Int -> Maybe String
caesar'' s key =
  if is_not_valid then
    Nothing
  else
    Just (map (chr . (shift key) . ord) s)
  where
    is_alph x =
      x >= ordA && x <= ordZ
    is_not_valid =
      any not [ is_alph x
              | c <- s,
                let x = ord c
              ]


deCaesar'' :: String -> Int -> Maybe String
deCaesar'' s key =
  caesar'' s (- key)

{-
caesar "abcxyz" (26*9999999)
caesar' "abcxyz" (26*9999999)
caesar'' "abcxyz" (26*9999999)
-}
