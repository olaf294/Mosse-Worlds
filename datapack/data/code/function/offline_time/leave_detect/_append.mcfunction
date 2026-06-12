execute store result storage playerlist temp.id int 1 run scoreboard players get @s id
function legitermoose:util/get_name
data modify storage playerlist temp.name set from storage legitermoose:temp playername
data modify storage playerlist tick append from storage playerlist temp
data remove storage playerlist temp