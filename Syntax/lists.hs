il = [-3, 12, -14, 56, 0, 121]
il :: [Int]

bl = [True, True, False]
bl :: [Bool]

fll = [[25.3], [-23.34, 234.343], []]
fll :: [[Float]]

el = []

-- Generating Syntax
equivalent = [1 .. 10]
equivalent = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

jump = [2, 4 .. 10]
jump = [2, 4, 6, 8, 10]

infinite = [8, 42 ..] --first two state the step

-- List Comprehension <- is the inclusion operator
[ x * x | x <- [1..], prime x]

[ sqrt x | x <- [1..]]

[ (x, y) | x <- [1, 2, 3], y <- [1, 2]] -- combinations

-- the : Operator
3 : [4,5] = [3,4,5]
True : [] = [True]

length [] = 0
length (_:xs) = 1 + length xs -- note that : has very low precedence

-- Non-exhaustive pattern
last [] = error "last funciton called on an empty list"
last [x] = x
last (_:xs) = last xs

-- list processing functions
hd xs     ++ tl xs        = xs -- hd = first element, tl = second to last elements
init xs   ++ last xs      = xs -- init = first to second-last elements, last = last element
take n xs ++ drop n xs    = xs -- take n xs = splice first n elements, drop = splice n + 1 to last elements

(x:_) !! 0                = x
(_:xs) !! n               = xs !! (n - 1)

[]     ++ ys              = ys
(x:xs) ++ ys              = x:(xs ++ ys)

head (x:_)                = x
tail (x:xs)               = xs

init [x]                  = []
init (x:xs)               = x : init xs

last [x]                  = x
last (_:xs)               = xs

take 0 _                  = []
take _ []                 = []
take n (x: xs)            = x:take (n - 1) xs

drop 0 xs                 = xs
drop _ []                 = []
drop n (_:xs)             = drop (n-1) xs

elem x []                 = False
elem x (y:ys) | x == y    = True
              | otherwise = elem x ys

sum []                    = 0
sum (x:xs)                = x + sum xs

reverse []                = []
reverse (x:xs)            = (reverse xs) ++ [x]

maximum [x]               = x
maximum (x:y:ys) | x > y  = maximum(x:xs)
                 | otherwise = maximum(y:ys)

concat []                 = []
concat ([]:ys)            = concat ys
concat ((x:xs):ys)        = x:concat (xs:ys)

zip (x:xs) (y:ys)         = (x, y):zip xs ys
zip _      _              = []

unzip []                  = ([], [])
unzip ((x, y):ps)         = (x:xs, y:ys)
                            where (xs, ys) = unzip ps

removeDups []             = []
removeDups [x]            = [x]
removeDups (x:y:xs) | x == y    = removeDups (x:xs)
                    | otherwise = x:removeDups(y:ys)

-- 'As' Patterns lab is label
rem34 lab@(p:q:r:s:xs) | r == s = p:q:xs
                       | otherwise = lab

-- permutations
perms [] = [[]]
perms xs = [x:p | x <- xs, p <- perms (removeFirst x xs)]
  where removeFirst x []                        = []
        removeFirst x (y:ys) | x == ys          = ys
                             | otherwise        = y : removeFirst x ys

                             