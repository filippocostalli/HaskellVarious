
import Data.List

sumByKey :: [(String, Int)] -> [(String, Int)]
sumByKey = map ((\(k, v) -> (head k, sum v)) . unzip) . groupBy (\x y -> fst x == fst y) . sort                      


testList :: [(String, Int)]
testList = [("Lemon", 22), ("Orange", 45), ("Orange", 45), ("Banana", 11), ("Lemon", 37), ("Orange", 8), ("Lemon", 54), ("Banana", 81)]