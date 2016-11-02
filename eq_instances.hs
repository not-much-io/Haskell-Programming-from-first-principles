module EqInstances where

data TisAnInteger =
  TisAn Integer


instance Eq TisAnInteger where
  (==) (TisAn x) (TisAn x') =
    x == x'


testTisAnInteger :: Bool
testTisAnInteger = trueEq && not falseEq
  where
    trueEq = TisAn 0 == TisAn 0
    falseEq = TisAn 1 == TisAn 0


data TwoIntegers =
  Two Integer Integer


instance Eq TwoIntegers where
  (==) (Two x y) (Two x' y') =
    x == x' && y == y'


testTwoIntegers :: Bool
testTwoIntegers = (trueEq1 && trueEq2) && (not falseEq1 && not falseEq2)
  where
    trueEq1 = Two 1 2 == Two 1 2
    trueEq2 = Two 2 1 == Two 2 1
    falseEq1 = Two 1 1 == Two 1 2
    falseEq2 = Two 1 1 == Two 2 1


data StringOrInt = TisAnInt Int
                 | TisAString String


instance Eq StringOrInt where
  (==) (TisAnInt x) (TisAnInt x') = x == x'
  (==) (TisAString s) (TisAString s') = s == s'
  (==) _ _ = False


instance Show StringOrInt where
  show (TisAString s) = s ++ "x2"
  show _ = "Welp!"


testStringOrInt :: Bool
testStringOrInt = trueEq1 && trueEq2 && not (falseEq1 || falseEq2 || falseEq3 || falseEq4)
  where
    trueEq1 = TisAnInt 1 == TisAnInt 1
    trueEq2 = TisAString "1" == TisAString "1"
    falseEq1 = TisAnInt 1 == TisAnInt 0
    falseEq2 = TisAString "0" == TisAString "1"
    falseEq3 = TisAnInt 1 == TisAString "1"
    falseEq4 = TisAString "1" == TisAnInt 1


data Pair a =
  Pair a a


instance (Eq a) => Eq (Pair a) where
  (==) (Pair x y) (Pair x' y') = x == x' && y == y'


data Tuple a b =
  Tuple a b


instance (Eq a, Eq b) => Eq (Tuple a b) where
  (==) (Tuple x y) (Tuple x' y') = x == x' && y == y'


data Which a = ThisOne a
             | ThatOne a


instance (Eq a) => Eq (Which a) where
  (==) (ThisOne x) (ThisOne x') = x == x'
  (==) (ThatOne x) (ThatOne x') = x == x'
  (==) _ _ = False


data EitherOr a b = Hello a
                  | Goodbye b


instance Eq (EitherOr a b) where
  (==) _ _ = False
