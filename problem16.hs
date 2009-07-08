-- problem16.hs --- Sum of digits in the number 2^1000

main :: IO()
main = putStrLn ( show ( sumDigits ( 2 ^ 1000 ) 0 ) )

sumDigits :: Integer -> Integer -> Integer
sumDigits x y | x == 0    = y
              | otherwise = sumDigits ( div x 10 ) ( y + ( rem x 10 ) )
