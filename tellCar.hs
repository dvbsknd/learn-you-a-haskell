data Car = MkCar { manufacturer :: String
                 , model :: String
                 , year :: Int
                 } deriving (Show)

tellCar :: Car -> String
tellCar (MkCar { manufacturer = c, model = m, year = y }) =
  "Your " ++ c ++ " " ++ m ++ " was made in " ++ show y
