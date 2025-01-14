module Main where

collatz :: Int -> Int
collatz x
    | even x = x `div` 2
    | otherwise = (x * 3) + 1

collatzList :: Int -> [Int]
collatzList 1 = []
collatzList x =
    let cx = collatz x
    in cx : collatzList cx

main :: IO ()
main = (putStrLn . unlines) (map (\x -> show x ++ ": " ++ show (collatzList x)) [1..10000])
