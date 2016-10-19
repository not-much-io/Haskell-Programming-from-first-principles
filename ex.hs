-- concat [[1, 2, 3], [4, 5, 6]]
-- (++) [1, 2, 3] [1, 2, 3]
-- (++) "Hello" "World"
-- "Hello" !! 4
-- take 4 "lovely"
-- take 100 ""  -- Silent failure?

module Main where


letterIndex :: Int -> Char
letterIndex x =
  "Something" !! x

main :: IO ()
main = putStrLn "Hello World"
