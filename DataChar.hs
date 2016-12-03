import Data.Char


keepUppers :: String -> String 
keepUppers s =
  filter isUpper s


upCase :: String -> String
upCase (l:ls) =
  (toUpper l:ls)


hollerBack :: String -> String
hollerBack s =
  map toUpper s


capitalizeAndGetFirst :: String -> Char
capitalizeAndGetFirst s =
  toUpper . head $ s
