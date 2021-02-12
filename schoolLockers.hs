-- Each locker has a code combination.
-- When students need to be assigned a locker,
-- they tell the locker supervisor which locker
-- number they want, and he gives them the
-- code. However, if someone is already using
-- that locker, the student needs to pick a
-- different one. We'll use a map from Data.Map
-- to represent the lockers. It will map from
-- locker numbers to a pair that indicates whether
-- the locker is in use, and the locker code.

import qualified Data.Map as Map

data LockerState = Taken | Free deriving (Show, Eq)
type Code = String
type LockerMap = Map.Map Int (LockerState, Code)

-- We'll need a function that looks up the locker
-- in our map and either returns the code for it
-- or tells us that it's Taken

lockerLookup :: Int -> LockerMap -> Either String Code
lockerLookup id map = case Map.lookup id map of
  Nothing -> Left $ "Locker " ++ show id ++ " not found!"
  Just (state, code) -> if state /= Taken
                        then Right code
                        else Left $ "Locker " ++ show id ++ " is taken."
lockers :: LockerMap
lockers = Map.fromList
    [(100,(Taken,"ZD39I"))
    ,(101,(Free,"JAH3I"))
    ,(103,(Free,"IQSA9"))
    ,(105,(Free,"QOTSA"))
    ,(109,(Taken,"893JJ"))
    ,(110,(Taken,"99292"))
    ]

main = do
  print $ lockerLookup 101 lockers
