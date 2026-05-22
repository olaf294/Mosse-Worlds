data remove storage legitermoose:world_browser temp

scoreboard players operation $tmp page = $page page
$scoreboard players add $tmp page $(offset)
execute store result storage legitermoose:world_browser temp.offset int 1 run scoreboard players get $tmp page
function legitermoose:world_browser/render/visits/_get_world with storage legitermoose:world_browser temp
execute unless data storage legitermoose:world_browser temp.world_id run return 0
$data modify storage legitermoose:world_browser temp.offset set value $(offset)
function legitermoose:world_browser/render/render_item