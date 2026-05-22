execute unless data storage legitermoose:world_browser sorted.temp[] run return 0

scoreboard players set $offset page 0
execute store result storage legitermoose:world_browser temp.offset int 1 run scoreboard players get $offset page
execute store result score $votes page run data get storage legitermoose:world_browser sorted.temp[0].votes
function legitermoose:world_browser/sort/votes/insert_loop {offset:0}

function legitermoose:world_browser/sort/votes/loop