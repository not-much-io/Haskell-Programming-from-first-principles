module Main where

-- Impossibru indeed! Need a typeclass!
notIdentity :: a -> a
notIdentity x =
  x

hypotheticalFunction1 :: a -> a -> a
hypotheticalFunction1 x y =
  x

hypotheticalFunction2 :: a -> a -> a
hypotheticalFunction2 x y =
  y

hypotheticalFunction3 :: (Num b) => a -> b -> b
hypotheticalFunction3 x y =
  y + 1

main :: IO ()
main = putStrLn "Hello World"
