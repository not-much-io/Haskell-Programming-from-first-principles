module LetsWriteCode1 where

-- 1

tensDigit :: Integral a => a -> a
tensDigit x = d
  where (xLast, _) = x `divMod` 10
        (_, d)     = xLast `divMod` 10

hundredsDigit :: Integral a => a -> a
hundredsDigit = tensDigit . (`div` 10)

-- 2

foldBoolCase :: a -> a -> Bool -> a
foldBoolCase x y b =
  case b of
    True -> x
    False -> y


foldBoolGuard :: a -> a -> Bool -> a
foldBoolGuard x y b
  | b == True  = x
  | b == False = y

-- 3

g :: (a -> b) -> (a, c) -> (b, c)
g xToY (x, z) = (xToY x, z)
