module Main where

multByPi :: Floating a => a -> a
multByPi x =
  pi * x


main :: IO ()
main = print x
  where
    x = multByPi (5 * 5)
