-- problem12.hs -- Project Euler Problem #12

main :: IO()
main = print ( tri_divs 28 7 )

--          number,    index,     number
tri_divs :: Integer -> Integer -> Integer
tri_divs x y | ( divisors x 0 1 ) > 500 = x
             | otherwise                  = tri_divs (x+y+1) (y+1)

--          number,    div count, number,    div count
divisors :: Integer -> Integer -> Integer -> Integer
divisors x y z | z*z >= x         = y
               | (x `mod` z) == 0 = divisors x (y+2) (z+1)
               | otherwise        = divisors x y (z+1)
