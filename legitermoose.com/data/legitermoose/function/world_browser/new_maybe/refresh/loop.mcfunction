execute unless data storage legitermoose:world_browser worlds[0] run return fail
execute if data storage legitermoose:world_browser page[17] run function legitermoose:world_browser/new_maybe/refresh/finish_page
function legitermoose:world_browser/new_maybe/refresh/add_item
data remove storage legitermoose:world_browser worlds[0]
function legitermoose:world_browser/new_maybe/refresh/loop