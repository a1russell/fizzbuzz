divisibleBy :: Int -> Int -> Bool
m `divisibleBy` n = m `mod` n == 0

fizzBuzzElement :: Int -> String
fizzBuzzElement n
  | n `divisibleBy` 15 = "FizzBuzz"
  | n `divisibleBy` 3 = "Fizz"
  | n `divisibleBy` 5 = "Buzz"
  | otherwise = show n

fizzBuzzList :: [String]
fizzBuzzList = map fizzBuzzElement [1..100]

main :: IO ()
main = putStrLn $ unwords fizzBuzzList

