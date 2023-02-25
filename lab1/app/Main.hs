module Main (main) where

import qualified Task1

main :: IO ()
main = putStrLn ( Task1.repeatEachPrelude ("abc", 0) )
--- main = putStrLn ( ["1", "2", "3"] )
