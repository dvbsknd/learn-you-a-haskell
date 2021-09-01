import Control.Applicative ((<*>), Applicative)
import Prelude (return, Monad)
import qualified Prelude

fmap :: (Applicative m, Monad m) => (a -> b) -> (m a -> m b)
fmap f func = (return f) <*> func

main =
    case fmap (Prelude.+ 1) (Prelude.Just 2) of
        Prelude.Just 3 -> Prelude.putStrLn "Good job!"
        _ -> Prelude.putStrLn "Try again"
