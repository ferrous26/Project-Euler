-- problem20.hs --- Digital sum of 100!

import Char

main :: IO()
main =  putStrLn ( show ( sum ( map (digitToInt) ( show ( factorial 100 ) ) ) ) )

factorial :: Integer -> Integer
factorial x | x == 1    = 1
            | otherwise = x * ( factorial ( x - 1 ) )
 
