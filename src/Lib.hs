module Lib where

import Java

foreign import java unsafe "@static Fib.add" fibAdd :: Int -> Int -> Int

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

fib' :: Integer -> Integer
fib' n = go n (0, 1) where
  go 0 (a, _) = a
  go n (a, b) = go (n - 1) (b, a + b)

fib'' :: Int -> Int
fib'' n = go n (0, 1) where
  go 0 (a, _) = a
  go n (a, b) = go (n - 1) (b, (fibAdd a b))
