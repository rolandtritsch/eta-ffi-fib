module Lib where

import Control.Monad.Trans.Cont

fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

fib' :: Integer -> Integer
fib' n = go n (0, 1) where
  go 0 (a, _) = a
  go n (a, b) = go (n - 1) (b, a + b)

fib'' :: Integer -> Cont r Integer
fib'' 0 = return 0
fib'' 1 = return 1
fib'' n = do
  a <- fib'' (n - 1)
  b <- fib'' (n - 2)
  return (a + b)
