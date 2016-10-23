{-# LANGUAGE NoMonomorphismRestriction #-}

module DetermineTheType where

-- a :: Num a => a
-- a = (* 9) 6
--
-- b :: Num a => (a, String)
-- b = head [(0, "doge"), (1, "kitteh")]
--
-- c :: (Integer, String)
-- c = head [(0 :: Integer, "doge"), (1, "kitteh")]
--
-- d :: Bool
-- d = if False then True else False
--
-- e :: Int
-- e = length [1, 2, 3, 4, 5]
--
-- f :: Bool
-- f = (length [1, 2, 3, 4]) > (length "TACOCAT")

-- x = 5
-- y = x + y
-- w = y * 10
--
-- g = 5
-- h = g + 5
-- i j = j * 10
--
-- k = 5
-- l = k + 5
-- m = 4 / l
--
-- bigNum = (5^)
-- wahoo = bigNum 10
--
-- n = print
-- o = print "Wohoo!"
-- p = n "Wohoo!"

-- functionH :: [t] -> t
-- functionH (x:_) = x
--
-- functionC :: (Ord a) => a -> a -> Bool
-- functionC x y = if (x > y) then True else False
--
-- functionS :: (a, b) -> b
-- functionS (x, y) = y

i :: a -> a
i x = x

c :: a -> b -> a
c x y = x

co :: (b -> c) -> (a -> b) -> a -> c
co yToZ xToY x = yToZ (xToY x)

a :: (a -> c) -> a -> a
a xToY x = x
