# vote lobby
execute if score @s worldid matches -8 at @s run return run function legitermoose:vote/lobby

scoreboard players reset @s vote
scoreboard players enable @s vote

execute store result storage legitermoose:temp vote.id int 1 run scoreboard players get @s worldid

function legitermoose:vote/world_vote/get_world with storage legitermoose:temp vote