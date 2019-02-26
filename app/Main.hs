module Main where

import System.Environment (getArgs)

import Control.Monad.Trans.Cont (runCont)
import Data.Function (trampoline)

import Lib

main :: IO ()
main = do
  args <- getArgs
  let n = read $ head args
  --print $ fib' n
  let result :: Integer; result = trampoline $ runCont (fib'' n) id
  print result
