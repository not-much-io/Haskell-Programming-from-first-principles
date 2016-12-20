data DaPhone =
  DaPhone {
    _1 :: [Int],
    _2 :: [Int],
    _3 :: [Int],
    _4 :: [Int],
    _5 :: [Int],
    _6 :: [Int],
    _7 :: [Int],
    _8 :: [Int],
    _9 :: [Int],
    ll :: [Int],
    lm :: [Int],
    lr :: [Int]
  } deriving Show


type Digit = Char
type Presses = Int


reverseTaps :: DaPhone -> Char -> [(Digit, Presses)]
reverseTaps = undefined


cellPhonesDead :: DaPhone
               -> String
               -> [(Digit, Presses)]
cellPhonesDead = undefined
