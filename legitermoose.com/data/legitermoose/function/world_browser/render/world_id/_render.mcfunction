data remove storage legitermoose:world_browser temp

scoreboard players operation $tmp page = $page page
$scoreboard players add $tmp page $(offset)
execute store result storage legitermoose:world_browser temp.offset int 1 run scoreboard players get $tmp page

function legitermoose:world_browser/render/world_id/_get_world with storage legitermoose:world_browser temp

$data modify storage legitermoose:world_browser temp.offset set value $(offset)
function legitermoose:world_browser/render/_format_owner with storage legitermoose:world_browser temp.world
function legitermoose:world_browser/render/_get_player_count with storage legitermoose:world_browser temp.world
data modify storage legitermoose:world_browser temp.world.offset set from storage legitermoose:world_browser temp.offset
function legitermoose:world_browser/render/_render_item with storage legitermoose:world_browser temp.world