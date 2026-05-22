execute unless data storage legitermoose:world_browser sorted.temp[] run return 0

scoreboard players set $offset page 0
execute store result storage legitermoose:world_browser temp.offset int 1 run scoreboard players get $offset page

function legitermoose:world_browser/sort/players/get_player_count with storage legitermoose:world_browser sorted.temp[0]
scoreboard players operation $players page = $p page

function legitermoose:world_browser/sort/players/insert_loop {offset:0}

function legitermoose:world_browser/sort/players/loop