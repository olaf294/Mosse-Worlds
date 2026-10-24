scoreboard players reset @s ds.rejoin

# refill the list
data remove storage discordsync:data playerlist
execute as @a run function discordsync:util/ld/refill

function discordsync:util/get_name
execute store result storage discordsync:data temp.count int 1 if entity @a
function discordsync:message/players/join with storage discordsync:data temp