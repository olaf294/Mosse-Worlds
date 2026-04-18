execute unless data storage legitermoose:world_browser unsorted_worlds[0] run return fail
execute if score test legitermoose.temp matches 100 run return fail
scoreboard players add test legitermoose.temp 1
scoreboard players reset highest legitermoose.temp
data remove storage legitermoose:world_browser world
data modify storage legitermoose:world_browser worlds set from storage legitermoose:world_browser unsorted_worlds
function legitermoose:world_browser/new_maybe/refresh/sort/get_highest_players
data modify storage legitermoose:world_browser sorted append from storage legitermoose:world_browser world
function legitermoose:world_browser/new_maybe/refresh/sort/remove with storage legitermoose:world_browser world
data remove storage legitermoose:world_browser world
function legitermoose:world_browser/new_maybe/refresh/sort