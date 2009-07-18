-- problem14.hs --- Use rule, find longest chain when starting number < 1000000

table :: [(Integer,Integer)]
table = map (\x -> (x,genChain 1 [x])) (take 250000 (iterate (+2) 500001))

longest :: Integer
longest = maximum ( map (snd) table)

genChain :: Integer -> [Integer] -> Integer
genChain y (x:xs) | x == 1       = y
                  | mod x 2 == 0 = genChain (y+1) ((div x 2):x:xs)
                  | mod x 2 == 1 = genChain (y+1) ((3*x+1):x:xs)

main :: IO()
main = print ( fst ( head ( filter (\(x,y) -> longest == y) table) ) )

