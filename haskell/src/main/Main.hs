fizzBuzzElement :: Int -> String
fizzBuzzElement n
  | n `mod` 15 == 0 = "FizzBuzz"
  | n `mod` 3 == 0 = "Fizz"
  | n `mod` 5 == 0 = "Buzz"
  | otherwise = show n

fizzBuzzList :: [String]
fizzBuzzList = map fizzBuzzElement [1..100]

main :: IO ()
main = putStrLn $ unwords fizzBuzzList

