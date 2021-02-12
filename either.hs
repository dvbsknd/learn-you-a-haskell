import Prelude hiding (Left, Right)
data Either a b = Left a | Right b deriving (Show, Eq, Ord, Read)


main = do
  print 1
