data TrafficLight = Red | Amber | Green

instance Eq TrafficLight where
  Red == Red = True
  Green == Green = True
  Amber == Amber = True
  _ == _ = False

instance Show TrafficLight where
  show Red = "Red Light!"
  show Green = "Green Light!"
  show Amber = "Amber Light!"

instance Ord TrafficLight where
  Red <= Amber = False
  Red <= Green = False
  Amber <= Green = False
  _ <= _  = True
