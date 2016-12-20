import Data.Char
import Data.List


type Shift = Int
type CharAndShift = (Char, Shift)


ordA :: Int
ordA = ord 'a'


alphPos :: Char -> Int
alphPos =
  subtract ordA . ord


shift :: CharAndShift -> Char
shift (c, s) = chr . intoValidRange $ shiftedPos
  where
    shiftedPos =
      alphPos c + s
    intoValidRange pos =
      mod pos 26 + ordA


applyShift :: String -> [Shift] -> String
applyShift [c] (s:_) = [shift (c, s)]
applyShift (c:cs) (s:ss) =
  if c == ' ' then
    ' ' : applyShift cs (s:ss)
  else
    shift (c, s) : applyShift cs ss     


vigenereCipher :: String -> String -> String
vigenereCipher msg kw = applyShift msg shifts
  where
    shifts =
      map alphPos (cycle kw)
