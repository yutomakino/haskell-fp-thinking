main = do
  print (song 3)


-- One man went to mow\n
-- Went to mow a meadow\n
-- One man add his dog\n
-- Went to mow a meadow\n
-- \n
-- Two men went to mow\n
-- Went to mow a meadow\n
-- Two men, one man and his dog\n
-- Went to mow a meadow\n
-- \n
-- Three men went to mow\n
-- Went to mow a meadow\n
-- Three men, two men, one man and his dog\n
-- Went to mow a meadow\n
song n = line1 n ++ meadow ++ line3 n ++ meadow
  where
    menOrMan :: Int -> String
    menOrMan n = if n == 1 then "One man" else numbers !! (n - 1) ++ " men"

    line1 :: Int -> String
    line1 n = menOrMan n ++ " went to mow\n"

    meadow = "Went to mow a meadow\n"

    line3 :: Int -> String
    line3 n = if n == 1 then "One man add his dog"
              else numbers !! (n - 2) ++ " men, " ++ count (n - 2) ++ "one man and his dog"

    count :: Int -> String
    count n = if n == 0 then ""
              else numbs !! (n - 1) ++ " men, " ++ count (n - 1)

    numbers, numbs :: [String]
    numbers = ["Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]
    numbs   = ["two", "three", "four", "five", "six", "seven", "eight"]

