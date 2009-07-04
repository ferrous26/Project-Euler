-- Project Euler/Problem3.hs -- Find the largest prime factor of 600851475143
main :: IO()
main = putStrLn ( show ( lpf 600851475143 [3,2] ) )
-- Apparently testing for primeness of divisor is not needed
lpf :: Integer -> [Integer] -> Integer
lpf x (y:ys) | x == y           = y
             | (x `mod` y) == 0 = lpf (x `div` y) (y:ys)
             | otherwise        = lpf x ((y+2):(y:ys))
