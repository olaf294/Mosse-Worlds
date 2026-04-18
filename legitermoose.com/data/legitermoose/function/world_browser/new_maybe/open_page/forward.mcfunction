setblock 999 55 8 yellow_shulker_box
item replace block 999 55 8 container.0 from entity @s player.cursor
execute store result score page legitermoose.temp run data get block 999 55 8 Items[{Slot:0b}].components."minecraft:custom_data".page
scoreboard players add page legitermoose.temp 1
execute store result score max_page legitermoose.temp run data get storage legitermoose:world_browser pages
scoreboard players remove max_page legitermoose.temp 1
execute if score page legitermoose.temp matches ..0 run scoreboard players operation page legitermoose.temp = max_page legitermoose.temp
execute if score page legitermoose.temp > max_page legitermoose.temp run scoreboard players set page legitermoose.temp 1
execute store result storage legitermoose:world_browser macro.page int 1 run scoreboard players get page legitermoose.temp
function legitermoose:world_browser/new_maybe/open_page with storage legitermoose:world_browser macro
data remove storage legitermoose:world_browser macro