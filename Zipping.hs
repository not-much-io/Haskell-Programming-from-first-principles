zip' :: [a] -> [b] -> [(a, b)]
zip' [] _ = []
zip' _ [] = []
zip' [x] [x'] = [(x, x')]
zip' (x:xs) (x':xs') =
  (x, x') : zip' xs xs'


zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' f _ [] = []
zipWith' f [] _ = []
zipWith' f [x] [x'] = [f x x']
zipWith' f (x:xs) (x':xs') =
  f x x' : zipWith' f xs xs'


zip'' :: [a] -> [b] -> [(a, b)]
zip'' xs xs' =
  zipWith' (,) xs xs'
