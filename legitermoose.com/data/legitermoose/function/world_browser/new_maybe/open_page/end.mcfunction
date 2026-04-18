execute store result score page legitermoose.temp run data get storage legitermoose:world_browser pages
scoreboard players remove page legitermoose.temp 1
execute store result storage legitermoose:world_browser macro.page int 1 run scoreboard players get page legitermoose.temp
function legitermoose:world_browser/new_maybe/open_page with storage legitermoose:world_browser macro
data remove storage legitermoose:world_browser macro