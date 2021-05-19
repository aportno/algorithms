module HaskellPackage.ListAlgo
( getLastElement
, getLastElementMinusOne
, getKthElement
, getNumberElements
, getReverse
, getPalindrome
, getFlattenNestedLists
, getRemoveConsecuvtiveDupes
, getConsecutiveDupesInSublists
, getRunLengthEncoding
) where

getLastElement :: [a] -> a
getLastLement [] = error "No end for empty lists!"
getLastElement [x] = x
getLastElement (_:xs) = getLastElement xs

getLastElementMinusOne :: [a] -> a
getLastElementMinusOne = last . init

getKthElement :: [a] -> Int -> a
getKthElement list i    = list !! (i-1)

getNumberElements :: [a] -> Int
getNumberElements [] = 0
getNumberElements (_:xs) = 1 + getNumberElements xs

getReverse :: [a] -> [a]
getReverse [] = []
getReverse (x:xs) = reverse xs ++ [x]