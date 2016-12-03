myOr :: [Bool] -> Bool
myOr [] = False
myOr [x] = x
myOr (x:xs) =
  x || myOr xs


myAny :: (a -> Bool) -> [a] -> Bool
myAny f [] = False
myAny f [x] = f x
myAny f (x:xs) =
  if f x then True else myAny f xs    


myElem :: Eq a => a -> [a] -> Bool
myElem e [] = False
myElem e [x] = e == x
myElem e (x:xs) =
  if e == x then True else myElem e xs


-- Using myAny
myElem' :: Eq a => a -> [a] -> Bool
myElem' el els =
  myAny (== el) els


myReverse :: [a] -> [a]
myReverse [] = []
myReverse [x] = [x]
myReverse (x:xs) =
  (myReverse xs) ++ [x]


squish :: [[a]] -> [a]
squish [] = []
squish [[x]] = [x]
squish (x:xs) =
  x ++ (squish xs)


squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f [] = []
squishMap f [x] = (f x)
squishMap f (x:xs) =
  f x ++ (squishMap f xs)


-- Using squishMap
squish' :: [[a]] -> [a]
squish' [] = []
squish' [[x]] = [x]
squish' xs =
  squishMap id xs


myMaximumBy :: (a -> a -> Ordering) -> [a] -> Maybe a
myMaximumBy f [] = Nothing
myMaximumBy f [x] = Just x
myMaximumBy f (x:x':xs) =
  case f x x' of
    LT -> myMaximumBy f (x':xs)
    EQ -> myMaximumBy f (x':xs)
    GT -> myMaximumBy f (x :xs)


myMinimumBy :: (a -> a -> Ordering) -> [a] -> Maybe a
myMinimumBy f [] = Nothing
myMinimumBy f [x] = Just x
myMinimumBy f (x:x':xs) =
  case f x x' of
    LT -> myMinimumBy f (x :xs)
    EQ -> myMinimumBy f (x :xs)
    GT -> myMinimumBy f (x':xs)


myMaximum :: (Ord a) => [a] -> Maybe a
myMaximum [] = Nothing
myMaximum xs =
  myMaximumBy compare xs 


myMinimum :: (Ord a) => [a] -> Maybe a
myMinimum [] = Nothing
myMinimum xs =
  myMinimumBy compare xs
