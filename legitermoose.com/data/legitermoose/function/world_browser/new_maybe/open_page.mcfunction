scoreboard players set @s ui 0
setblock 999 55 8 yellow_shulker_box
$data modify storage legitermoose:world_browser page set from storage legitermoose:world_browser pages[$(page)]
scoreboard players set slot legitermoose.temp 0
function legitermoose:world_browser/new_maybe/open_page/loop

item replace block 999 55 8 container.20 with player_head[item_name={text:"First Page",color:white},custom_data={custom_ui:1b, new_first_page:1b}, profile={properties:[{name:"textures", value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGMzMDFhMTdjOTU1ODA3ZDg5ZjljNzJhMTkyMDdkMTM5M2I4YzU4YzRlNmU0MjBmNzE0ZjY5NmE4N2ZkZCJ9fX0="}]}, max_stack_size=1]
item replace block 999 55 8 container.21 with player_head[item_name={text:"Previous Page",color:white}, custom_data={custom_ui:1b, new_previous_page:1b}, profile={properties:[{name:"textures", value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDgzNDhhYTc3ZjlmYjJiOTFlZWY2NjJiNWM4MWI1Y2EzMzVkZGVlMWI5MDVmM2E4YjkyMDk1ZDBhMWYxNDEifX19"}]}, max_stack_size=1]
item replace block 999 55 8 container.23 with player_head[item_name={text:"Next Page",color:white}, custom_data={custom_ui:1b, new_next_page:1b}, profile={properties:[{name:"textures", value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWJjYTkwZWJhZmRmNTdkZjRjMzgwY2YyNjU1YWE3YjRlYzZhNGJkYmQxNTUxNmViZmRlNDMyN2ExZTI3In19fQ=="}]}, max_stack_size=1]
item replace block 999 55 8 container.24 with player_head[item_name={text:"Last Page",color:white}, custom_data={custom_ui:1b, new_last_page:1b}, profile={properties:[{name:"textures", value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTFjMWY1ZGNmNTZiMTlkOWY2ZDE4MGU5MjA1ZGE5ZDc2MGMxNGNhNTU4MTdmYjdjZjljZDFkYjE3NzI4NTUxIn19fQ=="}]}, max_stack_size=1]
$scoreboard players set page legitermoose.temp $(page)
execute store result block 999 55 8 Items[{Slot:20b}].components."minecraft:custom_data".page int 1 run scoreboard players get page legitermoose.temp
execute store result block 999 55 8 Items[{Slot:21b}].components."minecraft:custom_data".page int 1 run scoreboard players get page legitermoose.temp
execute store result block 999 55 8 Items[{Slot:23b}].components."minecraft:custom_data".page int 1 run scoreboard players get page legitermoose.temp
execute store result block 999 55 8 Items[{Slot:24b}].components."minecraft:custom_data".page int 1 run scoreboard players get page legitermoose.temp

function legitermoose:world_browser/new_maybe/open_page/copy_to_echest
setblock 999 55 8 air
inventory @s enderchest @s <reset>           Wᴏʀʟᴅ Bʀᴏᴡꜱᴇʀ