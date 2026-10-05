item fill entity @s enderchest.* with light_gray_stained_glass_pane[custom_data={custom_ui:1b},tooltip_display={hide_tooltip:true},item_model="air",max_stack_size=1]
execute store result storage legitermoose:world_browser temp.id int 1 run scoreboard players get @s page
function legitermoose:player_worlds/get_worlds with storage legitermoose:world_browser temp

function legitermoose:player_worlds/render/_render_items