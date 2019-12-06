module PlaneSeat where

  planeSeat :: String -> String
  planeSeat ticket
    | isValid ticket = (seat ticket) ++ "-" ++ (side ticket)
    | not (isValid ticket) = "No Seat!!"
      where
        isValid ticket = ticketNumber ticket `elem` [1..60] && not (last ticket `elem` "IJ")
        ticketNumber str = read $ init str :: Int
        seat n  | ticketNumber n `elem` [1..20] = "Front"
                | ticketNumber n `elem` [21..40] = "Middle"
                | ticketNumber n `elem` [41..60] = "Back"
        side n  | last n `elem` ['A'..'C'] = "Left"
                | last n `elem` ['D'..'F'] = "Middle"
                | last n `elem` ['G','H','K'] = "Right"