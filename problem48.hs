-- problem48.hs --- Find the last 10 digits in the series n^n _(1,1000)

main :: IO()
main = putStrLn ( reverse ( take 10 ( reverse ( show ( sum ( map (\x -> x^x) ( take 1000 ( iterate (+1) 1 ) ) ) ) ) ) ) )
