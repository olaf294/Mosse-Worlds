function legitermoose:world_browser/render/_get_world with storage legitermoose:world_browser temp
function legitermoose:world_browser/render/_format_owner with storage legitermoose:world_browser temp.world
function legitermoose:world_browser/render/_get_player_count with storage legitermoose:world_browser temp.world
data modify storage legitermoose:world_browser temp.world.offset set from storage legitermoose:world_browser temp.offset
function legitermoose:world_browser/render/_render_item with storage legitermoose:world_browser temp.world