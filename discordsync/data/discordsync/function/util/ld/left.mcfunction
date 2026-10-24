$data remove storage discordsync:data playerlist[{name:"$(name)"}]

execute store result storage discordsync:data temp.count int 1 if entity @a
$data modify storage discordsync:data temp.name set value "$(name)"

# debug 
#$tellraw @a {color:red,text:"it was $(name) that just left!!!"}

function discordsync:message/players/leave with storage discordsync:data temp


# refill the list
data remove storage discordsync:data playerlist
execute as @a run function discordsync:util/ld/refill