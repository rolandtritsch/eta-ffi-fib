import Test.Hspec

import Lib

main :: IO ()
main = hspec $ do
  describe "fib" $ do
    it "should return the correct result" $ do
      fib 0 `shouldBe` 0
      fib 1 `shouldBe` 1
      fib 10 `shouldBe` 55

  describe "fib'" $ do
    it "should return the correct result" $ do
      fib' 0 `shouldBe` 0
      fib' 1 `shouldBe` 1
      fib' 10 `shouldBe` 55
