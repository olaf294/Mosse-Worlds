execute unless data storage legitermoose:world_browser worlds[0] run return fail
execute unless data storage legitermoose:world_browser world run function legitermoose:world_browser/new_maybe/refresh/sort/set_world
function legitermoose:world_browser/new_maybe/refresh/sort/get_data
execute if score player_count legitermoose.temp > highest legitermoose.temp run function legitermoose:world_browser/new_maybe/refresh/sort/set_world
data remove storage legitermoose:world_browser worlds[0]
function legitermoose:world_browser/new_maybe/refresh/sort/get_highest_players