$execute store result score $v2 page run data get storage legitermoose:world_browser sorted.votes[$(offset)].votes
execute if score $votes page >= $v2 page run return run function legitermoose:world_browser/sort/votes/insert with storage legitermoose:world_browser temp

scoreboard players add $offset page 1
execute store result storage legitermoose:world_browser temp.offset int 1 run scoreboard players get $offset page
function legitermoose:world_browser/sort/votes/insert_loop with storage legitermoose:world_browser temp