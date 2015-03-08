import Control.Applicative ((<*>))
import Data.Maybe (fromMaybe)
import Data.Monoid (mappend)

divisibleBy :: Int -> Int -> Bool
m `divisibleBy` n = m `mod` n == 0

whenDivisibleBy :: String -> Int -> Int -> Maybe String
whenDivisibleBy text divisor dividend =
  if dividend `divisibleBy` divisor
    then Just text
    else Nothing

fizzBuzzReplacementString :: Int -> Maybe String
fizzBuzzReplacementString = mappend
  ("Fizz" `whenDivisibleBy` 3)
  ("Buzz" `whenDivisibleBy` 5)

fizzBuzzElement :: Int -> String
fizzBuzzElement = fromMaybe . show <*> fizzBuzzReplacementString

fizzBuzzList :: [String]
fizzBuzzList = map fizzBuzzElement [1..100]

main :: IO ()
main = putStrLn $ unwords fizzBuzzList

