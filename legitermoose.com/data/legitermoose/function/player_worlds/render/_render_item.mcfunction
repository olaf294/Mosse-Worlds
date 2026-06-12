data modify storage legitermoose:world_browser temp.world_id set from storage legitermoose:world_browser player_worlds[0]
data remove storage legitermoose:world_browser player_worlds[0]
$data modify storage legitermoose:world_browser temp.offset set value $(slot)
function legitermoose:world_browser/render/render_item