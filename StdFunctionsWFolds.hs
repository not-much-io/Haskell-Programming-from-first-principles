myOr :: [Bool] -> Bool
myOr =
  foldr (||) False


myAny :: (a -> Bool) -> [a] -> Bool
myAny f =
  foldr (\x y -> f x || y) False


myElem :: Eq a => a -> [a] -> Bool
myElem e =
  foldr (\x y -> (x == e) || y) False


myReverse :: [a] -> [a]
myReverse =
  foldr (\x y -> y ++ [x]) []


squish :: [[a]] -> [a]
squish =
  foldr (++) []


squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f =
  foldr (\x y -> f x ++ y) []


myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy f xs =
  let
    getGt x y =
      if f x y == GT then x else y
  in
    foldl getGt (head xs) xs

  
myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy f xs =
  let
    getLt x y =
      if f x y == LT then x else y
  in
    foldl getLt (head xs) xs
