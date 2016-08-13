doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

-- if statements are expressions just like the + or - expressions.
doubleSmallNumber x = 
  if x > 100 
    then x
    else doubleUs x x

-- Some haskell function will have ' at the front to mark that its a strict version or its a variation.
doubleSmallNumber' x = (if x > 100 then x else doubleMe x) + 1

-- Function definitions dont do much they just hold some data.
conanO'Brien = "asdas"

-- List have to be the same data type.
--let lostNumbers = [4,5,15,16,23,42]

--let foundNumbers = [11,12,13,14,15,16]

boomBang xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]   
reduceMultiply xs ys = [ x*y | x <- xs, y <- ys]
--length' xs = sum [1 | _ <- xs] 
removeUppercase st = [c | c <- st, c `elem` ['a'..'z']]


removeNonUppercase :: String -> String
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]   

sayMe :: (Integral a) => a -> String
sayMe 1 = "One!"  
sayMe 2 = "Two!"  
sayMe 3 = "Three!"  
sayMe 4 = "Four!"  
sayMe 5 = "Five!"  
sayMe x = "Not between 1 and 5"  

factorial :: (Integral a) => a -> a  
factorial 0 = 1  
factorial n = n * factorial (n - 1) 

charName :: Char -> String  
charName 'a' = "Albert"  
charName 'b' = "Broseph"  
charName 'c' = "Cecil"  
charName x = "Xavier"

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)  
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2) 

first :: (a, b, c) -> a  
first (x, _, _) = x  

second :: (a, b, c) -> b  
second (_, y, _) = y  
  
third :: (a, b, c) -> c  
third (_, _, z) = z  

head' :: [a] -> a  
head' [] = error "Can't call head on an empty list, dummy!"  
head' (x:_) = x  

tell :: (Show a) => [a] -> String  
tell [] = "The list is empty"  
tell (x:[]) = "The list has one element: " ++ show x  
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y  
tell (x:y:_) = "This list is long. The first two elements are: " ++ show x ++ " and " ++ show y

length' :: (Num b) => [a] -> b  
length' [] = 0
length' (_:xs) = 1 + length' xs

sum' :: (Num a) => [a] -> a  
-- edge condition
sum' [] = 0
-- patten that recursivly calss its self
sum' (x:xs) = x + sum' xs  

capital :: String -> String  
capital "" = "Empty string, whoops!"  
capital all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]  

bmiTell :: (RealFloat a) => a -> a -> String  
bmiTell weight height  
    | bmi <= first(all) = "You're underweight, you emo, you!"  
    | bmi <= second(all) = "You're supposedly normal. Pffft, I bet you're ugly!"  
    | bmi <= third(all) = "You're fat! Lose some weight, fatty!"  
    | otherwise                 = "You're a whale, congratulations!"
    where bmi = weight / height ^ 2
          all@(skinny, normal, fat) = (18.5, 25.0, 30.0)

max' :: (Ord a) => a -> a -> a
max' a b 
    | a > b     = a
    | otherwise = b

myCompare :: (Ord a) => a -> a -> Ordering  
a `myCompare` b  
    | a > b     = GT  
    | a == b    = EQ  
    | otherwise = LT  

initials :: String -> String -> String 
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
 where (f:_) = firstname
       (l:_) = lastname

calcBmis :: (RealFloat a) => [(a, a)] -> [a]  
calcBmis xs = [bmi w h | (w, h) <- xs]  
    where bmi weight height = weight / height ^ 2  

firstItem [] = error "No bad stuff man!"
firstItem [x] = x
firstItem (xs:_) = xs

-- WIP
showEach :: [String] -> Char
showEach xs = [show x | x <- xs]

headWithCase' :: [a] -> a
headWithCase' xs = case xs of [] -> error "No HEAD dumby."
                              (x:_) -> x

maximum' :: [a] -> a
maximum' [] = "Empty list"
maximum' [x] = x
maximum' (x:xs) 
        | x > maxTail = 0
        | otherwise = maxTail
    where maxTail = maximum' xs


