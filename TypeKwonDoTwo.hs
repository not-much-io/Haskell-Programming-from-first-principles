module TypeKwonDoTwo where


chk :: Eq b => (a -> b) -> a -> b -> Bool
chk xToY x y = y == y2
  where
    y2 = xToY x


arith :: Num b => (a -> b) -> Integer -> a -> b
arith anyToB i x = b1 + b2
  where b1 = fromIntegral i
        b2 = anyToB x
