item fill entity @s enderchest.* with light_gray_stained_glass_pane[custom_data={custom_ui:1b},tooltip_display={hide_tooltip:true},item_model="air",max_stack_size=1]
item replace entity @s enderchest.20 with player_head[item_name={text:"First Page",color:white},custom_data={custom_ui:1b, first_page:1b}, profile={properties:[{name:"textures", value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGMzMDFhMTdjOTU1ODA3ZDg5ZjljNzJhMTkyMDdkMTM5M2I4YzU4YzRlNmU0MjBmNzE0ZjY5NmE4N2ZkZCJ9fX0="}]}, max_stack_size=1]
item replace entity @s enderchest.21 with player_head[item_name={text:"Previous Page",color:white}, custom_data={custom_ui:1b, previous_page:1b}, profile={properties:[{name:"textures", value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDgzNDhhYTc3ZjlmYjJiOTFlZWY2NjJiNWM4MWI1Y2EzMzVkZGVlMWI5MDVmM2E4YjkyMDk1ZDBhMWYxNDEifX19"}]}, max_stack_size=1]
item replace entity @s enderchest.22 with hopper[custom_data={custom_ui:1b,filter:1b},item_name={text:"Sort By",color:"green"},max_stack_size=1]
item modify entity @s enderchest.22 legitermoose:filter
item replace entity @s enderchest.23 with player_head[item_name={text:"Next Page",color:white}, custom_data={custom_ui:1b, next_page:1b}, profile={properties:[{name:"textures", value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWJjYTkwZWJhZmRmNTdkZjRjMzgwY2YyNjU1YWE3YjRlYzZhNGJkYmQxNTUxNmViZmRlNDMyN2ExZTI3In19fQ=="}]}, max_stack_size=1]
item replace entity @s enderchest.24 with player_head[item_name={text:"Last Page",color:white}, custom_data={custom_ui:1b, last_page:1b}, profile={properties:[{name:"textures", value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTFjMWY1ZGNmNTZiMTlkOWY2ZDE4MGU5MjA1ZGE5ZDc2MGMxNGNhNTU4MTdmYjdjZjljZDFkYjE3NzI4NTUxIn19fQ=="}]}, max_stack_size=1]
item replace entity @s enderchest.26 with player_head[custom_data={custom_ui:1b, your_worlds:1b}]
item modify entity @s enderchest.26 legitermoose:player_worlds/your_worlds

scoreboard players operation $page page = @s page
scoreboard players operation $page page *= 18 numbers

execute if score @s filter matches 1 run return run function legitermoose:world_browser/render/players/render
execute if score @s filter matches 2 run return run function legitermoose:world_browser/render/world_id/render
execute if score @s filter matches 3 run return run function legitermoose:world_browser/render/votes/render
execute if score @s filter matches 4 run return run function legitermoose:world_browser/render/visits/render
execute if score @s filter matches 5 run return run function legitermoose:world_browser/featured/render