import Data.Char


capitalizeWord :: String -> String
capitalizeWord w@(c:cs) =
  if isUpper c then
    w
  else
    (toUpper c : cs)


capitalizeParagraph :: String -> String
capitalizeParagraph [] = []
capitalizeParagraph (c:cs) =
  if c == '.' then
    '.' : capitalizeParagraph (capitalizeWord cs)
  else
    c : capitalizeParagraph cs
  
