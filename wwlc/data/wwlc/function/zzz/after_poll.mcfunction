# say POLLING
# tellraw @a [{text: "polling with: "}, {nbt: "Current", storage: "wwlc:poll_params"}]
# tellraw @a [{text: "server returned: "}, {nbt: "PollResponse", storage: "wwlc:http_response"}]

execute unless data storage wwlc:http_response PollResponse.response{status: "waiting"} run return run function wwlc:zzz/transaction_finished
data modify storage wwlc:poll_params Params append from storage wwlc:poll_params Current
schedule function wwlc:zzz/poll 5s