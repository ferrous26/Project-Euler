-- problem25.hs --- First Fibonacci number to have 1000 digits

main :: IO()
main = putStrLn ( show ( fib 2 1 1 ) )

--     index      current    previous
fib :: Integer -> Integer -> Integer -> Integer
fib x y z | y > 10^999  = x
          | otherwise   = fib (x+1) (y+z) y 

