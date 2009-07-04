-- Project Euler/Problem3.hs -- Find the largest prime factor of 600851475143

main :: IO()
main = putStrLn ( show ( lpf 600851475143 [3,2] ) )

lpf :: Integer -> [Integer] -> Integer
lpf x (y:ys) | x == y           = y
             | (x `mod` y) == 0 = lpf (x `div` y) (y:ys)
             | otherwise        = lpf x (getPrime y (y:ys))

getPrime :: Integer -> [Integer] -> [Integer]
getPrime x ys | primeTest (x+2) ys = (x+2):ys
              | otherwise          = getPrime (x+2) ys

primeTest :: Integer -> [Integer] -> Bool
primeTest x (y:ys) | (x `mod` y) == 0 = False
                   | y == 3           = True
                   | otherwise        = primeTest x ys
