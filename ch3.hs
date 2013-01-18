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


--10. Consider three two-dimensional points, a, b, and c. If we look at the angle formed
--by the line segment from a to b and the line segment from b to c, it turns left, turns
--right, or forms a straight line. Define a Direction data type that lets you represent
--these possibilities.
data Vector = Vector Float Float
			| MyVector Point Point
               deriving (Eq, Show)

getx (Vector x _ ) = x
gety (Vector _ y ) = y
getx (MyVector m n) = (fst n) - (fst m) 
gety (Vector _ y ) = (snd n) - (snd m)

data Direction = Left 
			   | Right 
			   | Straight 
			deriving Show

--rotate angle 
vectorRotateAngle :: Vector -> Vector -> Float
vectorRotateAngle v1 v2 = ((getx v1)*(gety v2) - (gety v1)*(getx v2)) / distance v1 v2


--turnDirection :: Point -> Point -> Point -> Direction
--turnDirection (x,_) (m,_) (p,_) = if p 
--11. Write a function that calculates the turn made by three two-dimensional points
--and returns a Direction.
--12. Define a function that takes a list of two-dimensional points and computes the
--direction of each successive triple. Given a list of points [a,b,c,d,e], it should
--begin by computing the turn made by [a,b,c], then the turn made by [b,c,d],
--then [c,d,e]. Your function should return a list of Direction.
--13. Using the code from the preceding three exercises, implement Graham’s scan al-
--gorithm for the convex hull of a set of 2D points. You can find good description
--of what a convex hull (http://en.wikipedia.org/wiki/Convex_hull) is, and how the
--Graham scan algorithm (http://en.wikipedia.org/wiki/Graham_scan) should work,
--on Wikipedia (http://en.wikipedia.org/).
