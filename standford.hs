foo :: Integer -> Integer
foo 0 = 16
foo 1 
  | "Haskell" > "C++" = 3
  | otherwise         = 4
foo n
  | n < 0            = 0
  | n `mod` 17 == 2  = -43
  | otherwise        = n + 3

-- hailstone function declares a type of input and output.
-- The input is and type of integer. 
-- The bars are basically switch case statements.
-- If n === 1 than the first check wouldn't pass.
-- And n would be 3 * 1 + 1 which is 4.

hailstone :: Integer -> Integer
hailstone n
  | n `mod` 2 == 0 = n `div` 2
  | otherwise      = 3 * n + 1


hailstoneSeq :: Integer -> [Integer]
hailstoneSeq 1 = [1]
hailstoneSeq n = n : (hailstoneSeq (hailstone n))

intListLength :: [Integer] -> Integer
intListLength []     = 0
intListLength (_:xs) = 1 + intListLength xs

hailstoneLen :: Integer -> Integer
hailstoneLen n = intListLength (hailstoneSeq n) - 1

-- toDigits :: Integer -> [Integer]
-- toDigits x = show x

toDigits :: Integer -> [Integer]
toDigits 0 = []
toDigits x = (toDigits (x `div` 10)) ++ [x `mod` 10]

toDigitsRev :: Integer -> [Integer]
toDigitsRev 0 = []
toDigitsRev x = x `mod` 10 : toDigitsRev (x `div` 10)

multiplyEven :: [Integer] -> [Integer]
multiplyEven [] = error "Cannot have empty list."
multiplyEven let x = (x:xs)
  | length xs `mod` 2 == 0 = 2 * (head x)

data FailableDouble = Failure
                    | OK Double
  deriving Show

data Thing = Shoe 
           | Ship 
           | SealingWax 
           | Cabbage 
           | King
  deriving Show

safeDiv :: Double -> Double -> FailableDouble
safeDiv _ 0 = Failure
safeDiv x y = OK (x / y)


