-- Project Euler/Problem7.hs -- Find the 10001st prime number

primeList :: [Int]
primeList = [3,2] -- Base list, backwards is easier

main :: IO()
main = putStrLn ( show ( prime 10001 ) )

prime :: Int -> Int
prime x = if (length primeList) >= x
          then primeList!!((length primeList)-x)
          else head( findPrime(x-(length primeList)) primeList )

findPrime :: Int -> [Int] -> [Int]
findPrime x ys = if x == 0 then ys else findPrime (x-1) (getPrime (head ys) ys)

getPrime :: Int -> [Int] -> [Int]
getPrime x ys = if primeTest (x+2) ys then (x+2):ys else getPrime (x+2) ys

primeTest :: Int -> [Int] -> Bool
primeTest x (y:ys) | (x `mod` y) == 0 = False
                   | y == 2           = True
                   | otherwise        = primeTest x ys
