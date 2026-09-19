execute unless entity @p run return 0

scoreboard players add .total requests 1
scoreboard players add .discordsync requests 1

execute if data storage discordsync:data messages.error{type:"Exception"} run return run function discordsync:fetch/once with storage discordsync:data data

# Get the first message ID
data modify storage discordsync:data data.prev_id set from storage discordsync:data messages.response[0].id

function discordsync:receive_loop