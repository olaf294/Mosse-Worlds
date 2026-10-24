execute store result storage discordsync:data temp.count int 1 if entity @a

data remove storage discordsync:data temp.list
execute as @a run function discordsync:commands/_list/add

# if only one player is online
execute if data storage discordsync:data temp.list[0] unless data storage discordsync:data temp.list[1] run data modify storage discordsync:data temp.name set from storage discordsync:data temp.list[0]
execute if data storage discordsync:data temp.list[0] unless data storage discordsync:data temp.list[1] run return run function discordsync:commands/_list/macro_single with storage discordsync:data temp

# if only one player is online
execute unless data storage discordsync:data temp.list[0] run data modify storage discordsync:data body.content set value "__**There are 0 players online.**__"
execute unless data storage discordsync:data temp.list[0] run return run function discordsync:message/send with storage discordsync:data data

# if more are online
function discordsync:commands/_list/multi/concat
execute store result storage discordsync:data temp.concat.count int 1 if entity @a
function discordsync:commands/_list/multi/final with storage discordsync:data temp.concat

function discordsync:message/send with storage discordsync:data data