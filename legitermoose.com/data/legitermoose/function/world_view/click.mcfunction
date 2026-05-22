execute if items entity @s player.cursor *[custom_data~{world_info:1b}] run return run function legitermoose:world_view/world_info

execute unless items entity @s player.cursor *[custom_data~{world:1b}] run return 0
execute store result storage legitermoose:world_browser temp.world_id int 1 run scoreboard players get @s page

item replace block 999 54 8 container.0 from entity @s player.cursor
item replace entity @s player.cursor with air
inventory @s close

function legitermoose:world/load_world/tp_to_plot with block 999 54 8 Items[0].components."minecraft:custom_data".plot_position