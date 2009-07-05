-- problem10.hs --- Sum of primes below 2 million
main :: IO()
main = putStrLn ( show ( sum ( plt 2000000 [2,3] ) ) )

plt :: Integer -> [Integer] -> [Integer]
plt x ys = if x > ( last ys )
           then plt x ( getPrime ( last ys ) ys )
           else ( take ( ( length ys ) - 1 ) ys )

getPrime :: Integer -> [Integer] -> [Integer]
getPrime x ys = if ( x + 2 ) `isPrime` ( tail ys )
                then ys ++ [ ( x + 2 ) ]
                else getPrime ( x + 2 ) ys

isPrime :: Integer -> [Integer] -> Bool
isPrime x (y:ys) | ( x `mod` y ) == 0 = False
                 | ( y ^ 2 ) > x      = True
                 | otherwise          = isPrime x ys
