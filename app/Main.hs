module Main where
import System.Environment
import System.Exit (exitWith, ExitCode (ExitFailure))

main :: IO ()
main = validateArgs >>= print

validateArgs :: IO [String]
validateArgs = do
    args <- getArgs
    case args of
        [_] -> return args
        _wrongSize -> putStrLn "Usage: ./computor \"equation\"" >> exitWith (ExitFailure 1)
