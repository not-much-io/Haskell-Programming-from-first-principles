import Data.Char

isSubsequenceOf :: (Eq a) => [a] -> [a] -> Bool
isSubsequenceOf [] _ = True
isSubsequenceOf _ [] = True
isSubsequenceOf (x:xs) l' =
  -- Any point in using @ pattern?
  elem x l' && isSubsequenceOf xs l'

capitalizeWord :: String -> [(String, String)]
capitalizeWord s = map wCapitalized ws 
  where ws = words s
        wCapitalized w@(c:cs) =
          (w, (toUpper c : cs))
