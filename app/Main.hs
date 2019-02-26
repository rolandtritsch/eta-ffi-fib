module Main where

import System.Environment (getArgs)

import Lib

main :: IO ()
main = do
  args <- getArgs
  let n = read $ head args
  print $ fib' n
