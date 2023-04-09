main = do
  putStrLn("Factorial 6: " ++ show (fact 6))
  putStrLn("Factorial 6: " ++ show (fact' 6))
  putStrLn("Check 6 > 4: " ++ show (checkVal 6 4))

-- 'Recursive' function
fact n | n == 0     = 1
       | otherwise  = n * fact (n - 1)

-- Utilize Pattern Matching (think about pattern matching in django url)
-- fact' 0 has to be above fact' n so that program does not mistake 0 for n
fact' 0 = 1
fact' n = n * fact (n - 1)

-- Two parameters
checkVal x y | x > y = 1
             | x < y = -1
             | otherwise = 0 