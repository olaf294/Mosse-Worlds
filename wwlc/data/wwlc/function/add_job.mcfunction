# Registers a job created on the dashboard
#
# type is "buy" for awarding LC to a user, or "sell" to recieve WWLC
#
# @param id: String
# @param token: String
# @param type: String

$data modify storage wwlc:config Jobs append value { id: "$(id)", token: "$(token)", type: "$(type)" }