data remove storage legitermoose:temp search.found_world
scoreboard players reset @s visit
$data modify storage legitermoose:temp search.found_world set from storage legitermoose:worlds worlds[{owner_id:$(player_id)}]

# if there is no world
execute unless data storage legitermoose:temp search.found_world run tellraw @s [{text:"No world could be found that was made by this player.",color:red}]
execute unless data storage legitermoose:temp search.found_world at @s run return run playsound block.note_block.bass ui @s ~ ~ ~ 1 .5

execute if data storage legitermoose:temp search.found_world run tellraw @s [{text:"Found World: ",color:green},{storage:"legitermoose:temp",nbt:"search.found_world.name",interpret:1b}]
execute if data storage legitermoose:temp search.found_world at @s run playsound block.note_block.pling ui @s ~ ~ ~ 1 2

# display the world
data modify storage legitermoose:temp search.UUID set from storage legitermoose:temp search.found_world.uuid
function legitermoose:world/get_own_world with storage legitermoose:temp search