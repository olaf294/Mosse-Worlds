# Store ID 
execute store result storage playerlist tick_tomerge.id int 1 run scoreboard players get @s id

# Store Name
function legitermoose:util/get_name
data modify storage playerlist tick_tomerge.name set from storage legitermoose:temp playername

# Append to tick
data modify storage playerlist tick append from storage playerlist tick_tomerge

# Remove
data remove storage playerlist tick_tomerge