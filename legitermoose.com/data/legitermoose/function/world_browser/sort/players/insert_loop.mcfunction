$execute store result score $p page run data get storage legitermoose:world_browser sorted.players[$(offset)].players

execute if score $players page >= $p page run return run function legitermoose:world_browser/sort/players/insert with storage legitermoose:world_browser temp

scoreboard players add $offset page 1
execute store result storage legitermoose:world_browser temp.offset int 1 run scoreboard players get $offset page
function legitermoose:world_browser/sort/players/insert_loop with storage legitermoose:world_browser temp