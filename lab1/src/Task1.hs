module Task1(repeatEach, repeatEachPrelude) where 

appendChars :: (String, Char, Int) -> String
appendChars (str, _, 0) = str
appendChars (str, ch, n) = appendChars (str ++ [ch], ch, n - 1)

repeatEach :: (String, Int) -> String
repeatEach (str, n) = repeatEach' ([], str)
    where 
        repeatEach' (result, []) = result
        repeatEach' (result, char:chars) = repeatEach' ( appendChars (result, char, n), chars)

repeatEachPrelude :: (String, Int) -> String
repeatEachPrelude (str, n) = concatMap (replicate n) str