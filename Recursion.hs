module Main where

cattyConny :: String -> String -> String
cattyConny x y = x ++ " mrow " ++ y

flippy :: String -> String -> String
flippy = flip cattyConny

appedCatty :: String -> String
appedCatty = cattyConny "woops"

frappe :: String -> String
frappe = flippy "haha"

recurSum :: (Eq a, Num a) => a -> a
recurSum 0 = 0
recurSum 1 = 1
recurSum x = x + recurSum (x - 1)

multIntegral :: (Integral a) => a -> a -> a
multIntegral 1 y = y
multIntegral x y =
  multIntegral (x - 1) (y + y)

mc91 :: Integer -> Integer
mc91 x
  | x > 100 = x - 10
  | otherwise = mc91 $ mc91 $ x + 11

main :: IO ()
main = putStrLn "Hello World"
