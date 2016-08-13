maximum' :: [a] -> a
maximum' [] = "Empty list"
maximum' [x] = x
maximum' (x:xs) 
        | x > maxTail = 0
        | otherwise = maxTail
    where maxTail = maximum' xs