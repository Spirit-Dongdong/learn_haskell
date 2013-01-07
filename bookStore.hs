--Int: id
--String: Title
--[String]: authors
data BookInfo = Book Int String [String]
                        deriving(Show)

data MagazineInfo = Magazine Int String [String]
						deriving(Show)


myInfo = Book 9781452 "Algebra of Programming" ["Richard Bird", "Oege de Moor"]

type CustomerID = Int
type ReviewBody = String


data BookReview = BookReview BookInfo CustomerID String

type CardHolder = String
type CardNumber = String
type Address = [String]



