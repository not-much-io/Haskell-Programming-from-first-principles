module TypeKwonDo where

-- data Woot
-- data Blah
--
-- f :: Woot -> Blah
-- f = undefined
--
-- g :: (Blah, Woot) -> (Blah, Blah)
-- g (x, y) = (x, f y)

-- f :: Int -> String
-- f = undefined
--
-- g :: String -> Char
-- g = undefined
--
-- h :: Int -> Char
-- h x = g $ f x

-- data A
-- data B
-- data C
--
-- q :: A -> B
-- q = undefined
--
-- w :: B -> C
-- w = undefined
--
-- e :: A -> C
-- e x = w $ q x

data X
data Y
data Z

xz :: X -> Z
xz = undefined

yz :: Y -> Z
yz = undefined

xform :: (X, Y) -> (Z, Z)
xform (x, y) = (z1, z2)
  where z1 = xz x
        z2 = yz y

munge :: (x -> y) -> (y -> (w, z)) -> x -> w
munge xToY yToWZTuple x = fst $ yToWZTuple y
  where y = xToY x
