--ch 02


lastButOne :: [a] -> Maybe a
lastButOne [x,_] = Just x
lastButOne (_:x:ys) = lastButOne (x:ys)
lastButOne _ = Nothing


--ch 03






--[1,2,3] --> [1,2,3,3,2,1]


