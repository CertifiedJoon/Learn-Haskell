main = do
  putStrLn("Area of Circle  :" ++ show (area 10))
  putStrLn("Stirling number :" ++ show (stirling 20))
  putStrLn("Volume of Sphere:" ++ show (volume 10))

-- Area of Circle Formula
area r = pi * r * r

-- Stirling Number Formula
e = 2.717281828
stirling n = (n/e)**n * sqrt(2*pi*n)

-- Volume of Sphere Formula
volume r = 4.0 / 3.0 * pi * (cube r)
  where 
  cube x = x * x * x