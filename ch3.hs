import Data.List

--1. Write a function that computes the number of elements in a list. To test it, ensure
--that it gives the same answers as the standard length function.
myLength :: [a] -> Integer
myLength (x:xs) = 1 + myLength(xs)
myLength [] = 0


--2. Add a type signature for your function to your source file. To test it, load the source
--file into ghci again.

type Point = (Float, Float)

distance :: Point -> Point -> Float
distance (x,y) (m,n) = sqrt $ (x-m)^2 + (y-n)^2

--3. Write a function that computes the mean of a list, i.e., the sum of all elements in
--the list divided by its length. (You may need to use the fromIntegral function to
--convert the length of the list from an integer into a floating-point number.)

myMean :: Fractional a => [a] -> a
--let length = myLength a
myMean (xs) = (sum xs) / fromInteger (myLength xs)

--4. Turn a list into a palindrome; i.e., it should read the same both backward and
--forward. For example, given the list [1,2,3], your function should return
--[1,2,3,3,2,1].

palindrome :: [a] -> [a]
palindrome [] = []
palindrome xs = xs ++ (reverse xs)

--5. Write a function that determines whether its input list is a palindrome.

isPalindrome :: Eq a => [a] -> Bool   
isPalindrome [] = False
isPalindrome [_] = True
isPalindrome (x:xs) = if x /= (last xs)
					  then False
					  else isPalindrome(init xs)


--6. Create a function that sorts a list of lists based on the length of each sublist. (You
--may want to look at the sortBy function from the Data.List module.)


compareLength :: Ord a => [a] -> [a] ->Ordering
compareLength xs ys = if length xs > length ys
					  then GT
				  	  else LT

--compareLength :: Ord a => a -> a ->Ordering
--compareLength x y = if x > y
--					then GT
--				  	else LT

sortByLength xs = sortBy compareLength xs

--7. Define a function that joins a list of lists together using a separator value:
---- file: ch03/Intersperse.hs
--intersperse :: a -> [[a]] -> [a]
--8. The separator should appear between elements of the list, but it should not follow
--the last element. Your function should behave as follows:
