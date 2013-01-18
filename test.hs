type Point = (Float, Float)


data Vector = Vector Float Float
               deriving (Eq, Show)

getx (Vector x _ ) = x
gety (Vector _ y ) = y

data Direction = Left 
			   | Right 
			   | Straight 
			deriving Show

vectorRotateAngle :: Vector -> Vector -> Float
vectorRotateAngle v1 v2 = (getx v1)*(gety v2) - (gety v1)*(getx v2)

--turnDirection :: Point -> Point -> Point -> Direction
--turnDirection (x,y) (m,n) (p,q) = let ab = Vector (m-x) (n-y)
--									  ac = Vector (p-x) (q-y)
