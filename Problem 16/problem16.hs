-- problem16.hs --- Sum of digits in the number 2^1000
import Char
main :: IO()
main = putStrLn ( show ( sum ( map (digitToInt) ( show ( 2 ^ 1000 ) ) ) ) )
