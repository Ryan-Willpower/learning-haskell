-- define type Ryan
type Ryan = String

ryan :: Ryan
ryan = "Ryan"

shoutRyanName :: Ryan -> IO ()
shoutRyanName ryan = print ("Hey" ++ ryan)