-- problem10.hs --- Sum of primes below 2 million
main :: IO()
main = print ( sum ( primes [2] ( take 1000000 ( iterate (+2) 3 ))))

primes :: [Integer] -> [Integer] -> [Integer]
primes xs (y:ys) | y > 1414  = primes (y:xs) ys
                 | otherwise = primes (y:xs) (filter (\z -> z `mod` y /= 0) ys)
primes xs []     = xs
