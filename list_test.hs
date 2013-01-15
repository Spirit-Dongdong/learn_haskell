-- f has 2 arguments, one is a list
-- list must be placed at last
charAt :: Integer -> [a] -> a
charAt index (x:xs)  = if index == 0
					   then x
				       else charAt (index-1) xs 


--lastIndexOf :: a -> [a] -> Int
lastIndexOf _ [] = -1
lastIndexOf x xs = if x == last xs
				   then (length xs)-1
				   else lastIndexOf x (init xs)





