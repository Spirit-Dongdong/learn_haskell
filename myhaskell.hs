--ch 02


lastButOne :: [a] -> Maybe a
lastButOne [x,_] = Just x
lastButOne (_:x:ys) = lastButOne (x:ys)
lastButOne _ = Nothing


--ch 03


myLength :: [a] -> Integer
myLength (x:xs) = 1 + myLength(xs)
myLength [] = 0

myMean :: Fractional a => [a] -> a
--let length = myLength a
myMean (xs) = (sum xs) / fromInteger (myLength xs)

--[1,2,3] --> [1,2,3,3,2,1]
palindrome :: [a] -> [a]
palindrome [] = []
palindrome xs = xs ++ (reverse xs)

isPalindrome :: [a] -> Bool   
isPalindrome [] = False
isPalindrome [_] = True
isPalindrome (x:xs) = if x /= (last xs)
					  then False
					  else isPalindrome(init xs)