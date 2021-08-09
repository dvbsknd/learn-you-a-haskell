import System.IO
import System.Directory
import Data.List

main = do
  contents <- readFile "todo.txt"
  let todoTasks = lines contents
      numberedTasks = zipWith (\n line -> show n ++ " - " ++ line)
                        [0..] todoTasks
  putStrLn "These are your todos:"
  mapM_ putStrLn numberedTasks
  putStrLn "Which to delete?"
  choice <- getLine
  let number = read choice
      newTodos = unlines $ delete (todoTasks !! number) todoTasks
  (tempName, tempHandle) <- openTempFile "." "temp"
  hPutStr tempHandle newTodos
  hClose tempHandle
  removeFile "todo.txt"
  renameFile tempName "todo.txt"
