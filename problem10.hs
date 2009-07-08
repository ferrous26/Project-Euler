-- problem10.hs --- Sum of primes below 2 million
main :: IO()
main = putStrLn ( show ( sum ( primes [2] ( take 1000000 ( iterate (+2) 3 )))))

primes :: [Integer] -> [Integer] -> [Integer]
primes xs (y:ys) = primes (y:xs) ( filter ( \z -> (mod z y) /= 0 ) ys )
primes xs []     = xs
