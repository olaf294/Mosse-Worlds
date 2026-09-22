item fill entity @s enderchest.* with light_gray_stained_glass_pane[custom_data={custom_ui:1b},tooltip_display={hide_tooltip:true},item_model="air",max_stack_size=1]
item replace entity @s enderchest.11 with player_head[profile={properties:[{name:"textures", value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmMyNzEwNTI3MTllZjY0MDc5ZWU4YzE0OTg5NTEyMzhhNzRkYWM0YzI3Yjk1NjQwZGI2ZmJkZGMyZDZiNWI2ZSJ9fX0="}]}, custom_name={text:"Get World Info", italic: false, color: green, bold: true}, custom_data={custom_ui:1b, world_info:1b}, max_stack_size=1]

execute store result storage legitermoose:world_browser temp.world_id int 1 run scoreboard players get @s page
data modify storage legitermoose:world_browser temp.offset set value 13
function legitermoose:world_browser/render/render_item