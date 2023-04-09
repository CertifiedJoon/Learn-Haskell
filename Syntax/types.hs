--tuples
i = 68
i :: Int

--function typing
isB c = (c == 'B') || (c == 'b)
isB :: Char -> Bool

--tuples
t1 = (3, True)
t1 :: (Int, Bool)

t2 = (1.48, 'd', 34)
t2 :: (Float, Char, Int)

t3 = ((True, "hello"), False, (112, 16.821))
t3 :: ((Bool, String), Bool, (Int, Float))