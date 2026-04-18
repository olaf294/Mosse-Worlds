execute unless data storage legitermoose:world_browser page[0] run return fail
execute store result storage legitermoose:world_browser page[0].Slot byte 1 run scoreboard players get slot legitermoose.temp
scoreboard players add slot legitermoose.temp 1
data modify block 999 55 8 Items append from storage legitermoose:world_browser page[0]
data remove storage legitermoose:world_browser page[0]
function legitermoose:world_browser/new_maybe/open_page/loop