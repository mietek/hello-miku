import Network.Miku
import Hack2.Handler.SnapServer
import System.Environment

main :: IO ()
main = do
    env <- getEnvironment
    let port_ = maybe 8080 read $ lookup "PORT" env
    runWithConfig (ServerConfig port_) . miku $
      get "/" (text "Hello, world!")
