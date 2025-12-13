greet :: String -> IO ()
greet name = putStrLn ("Hello, " ++ name ++ "!")

main :: IO ()
main = greet "World"
