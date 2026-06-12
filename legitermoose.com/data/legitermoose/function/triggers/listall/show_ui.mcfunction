item replace entity @s enderchest.0 with light_gray_stained_glass_pane[custom_data={custom_ui:1b}, tooltip_display={hide_tooltip:true}, item_model="air", max_stack_size=1]
item replace entity @s enderchest.1 with light_gray_stained_glass_pane[custom_data={custom_ui:1b}, tooltip_display={hide_tooltip:true}, item_model="air", max_stack_size=1]
item replace entity @s enderchest.2 with light_gray_stained_glass_pane[custom_data={custom_ui:1b}, tooltip_display={hide_tooltip:true}, item_model="air", max_stack_size=1]
item replace entity @s enderchest.3 with light_gray_stained_glass_pane[custom_data={custom_ui:1b}, tooltip_display={hide_tooltip:true}, item_model="air", max_stack_size=1]
item replace entity @s enderchest.4 with light_gray_stained_glass_pane[custom_data={custom_ui:1b}, tooltip_display={hide_tooltip:true}, item_model="air", max_stack_size=1]
item replace entity @s enderchest.5 with light_gray_stained_glass_pane[custom_data={custom_ui:1b}, tooltip_display={hide_tooltip:true}, item_model="air", max_stack_size=1]
item replace entity @s enderchest.6 with light_gray_stained_glass_pane[custom_data={custom_ui:1b}, tooltip_display={hide_tooltip:true}, item_model="air", max_stack_size=1]
item replace entity @s enderchest.7 with light_gray_stained_glass_pane[custom_data={custom_ui:1b}, tooltip_display={hide_tooltip:true}, item_model="air", max_stack_size=1]
item replace entity @s enderchest.8 with light_gray_stained_glass_pane[custom_data={custom_ui:1b}, tooltip_display={hide_tooltip:true}, item_model="air", max_stack_size=1]
item replace entity @s enderchest.9 with light_gray_stained_glass_pane[custom_data={custom_ui:1b}, tooltip_display={hide_tooltip:true}, item_model="air", max_stack_size=1]
item replace entity @s enderchest.10 with light_gray_stained_glass_pane[custom_data={custom_ui:1b}, tooltip_display={hide_tooltip:true}, item_model="air", max_stack_size=1]
item replace entity @s enderchest.11 with light_gray_stained_glass_pane[custom_data={custom_ui:1b}, tooltip_display={hide_tooltip:true}, item_model="air", max_stack_size=1]
item replace entity @s enderchest.12 with light_gray_stained_glass_pane[custom_data={custom_ui:1b}, tooltip_display={hide_tooltip:true}, item_model="air", max_stack_size=1]
item replace entity @s enderchest.13 with light_gray_stained_glass_pane[custom_data={custom_ui:1b}, tooltip_display={hide_tooltip:true}, item_model="air", max_stack_size=1]
item replace entity @s enderchest.14 with light_gray_stained_glass_pane[custom_data={custom_ui:1b}, tooltip_display={hide_tooltip:true}, item_model="air", max_stack_size=1]
item replace entity @s enderchest.15 with light_gray_stained_glass_pane[custom_data={custom_ui:1b}, tooltip_display={hide_tooltip:true}, item_model="air", max_stack_size=1]
item replace entity @s enderchest.16 with light_gray_stained_glass_pane[custom_data={custom_ui:1b}, tooltip_display={hide_tooltip:true}, item_model="air", max_stack_size=1]
item replace entity @s enderchest.17 with light_gray_stained_glass_pane[custom_data={custom_ui:1b}, tooltip_display={hide_tooltip:true}, item_model="air", max_stack_size=1]
item replace entity @s enderchest.18 with light_gray_stained_glass_pane[custom_data={custom_ui:1b}, tooltip_display={hide_tooltip:true}, item_model="air", max_stack_size=1]
item replace entity @s enderchest.19 with light_gray_stained_glass_pane[custom_data={custom_ui:1b}, tooltip_display={hide_tooltip:true}, item_model="air", max_stack_size=1]
item replace entity @s enderchest.20 with light_gray_stained_glass_pane[custom_data={custom_ui:1b}, tooltip_display={hide_tooltip:true}, item_model="air", max_stack_size=1]
item replace entity @s enderchest.21 with light_gray_stained_glass_pane[custom_data={custom_ui:1b}, tooltip_display={hide_tooltip:true}, item_model="air", max_stack_size=1]
item replace entity @s enderchest.22 with light_gray_stained_glass_pane[custom_data={custom_ui:1b}, tooltip_display={hide_tooltip:true}, item_model="air", max_stack_size=1]
item replace entity @s enderchest.23 with light_gray_stained_glass_pane[custom_data={custom_ui:1b}, tooltip_display={hide_tooltip:true}, item_model="air", max_stack_size=1]
item replace entity @s enderchest.24 with light_gray_stained_glass_pane[custom_data={custom_ui:1b}, tooltip_display={hide_tooltip:true}, item_model="air", max_stack_size=1]
item replace entity @s enderchest.25 with light_gray_stained_glass_pane[custom_data={custom_ui:1b}, tooltip_display={hide_tooltip:true}, item_model="air", max_stack_size=1]
item replace entity @s enderchest.26 with light_gray_stained_glass_pane[custom_data={custom_ui:1b}, tooltip_display={hide_tooltip:true}, item_model="air", max_stack_size=1]

function legitermoose:util/get_name
item modify entity @s enderchest.0 legitermoose:listall

scoreboard players set $tmp ui 0

inventory @s enderchest @s <reset>          Oɴʟɪɴᴇ Pʟᴀʏᴇʀꜱ

# get online worlds
data remove storage legitermoose:temp online_worlds
execute as @a[tag=legitermoose.is_playing] run function legitermoose:util/get_online_worlds
execute store result score .online_worlds legitermoose.misc if data storage legitermoose:temp online_worlds.worlds[]

# correct grammar messsage
execute unless score .players legitermoose.misc matches 1 unless score .online_worlds legitermoose.misc matches 1 run return run tellraw @s [{score:{name:".players",objective:"legitermoose.misc"},color:gold},{text:" ᴘʟᴀʏᴇʀꜱ ᴏɴʟɪɴᴇ ᴀᴄʀᴏꜱꜱ ",color:green},{score:{name:".online_worlds",objective:"legitermoose.misc"},color:gold},{text:" ᴡᴏʀʟᴅꜱ.",color:green}]
execute unless score .players legitermoose.misc matches 1 if score .online_worlds legitermoose.misc matches 1 run return run tellraw @s [{score:{name:".players",objective:"legitermoose.misc"},color:gold},{text:" ᴘʟᴀʏᴇʀꜱ ᴏɴʟɪɴᴇ ᴀᴄʀᴏꜱꜱ ",color:green},{score:{name:".online_worlds",objective:"legitermoose.misc"},color:gold},{text:" ᴡᴏʀʟᴅ.",color:green}]
tellraw @s [{score:{name:".players",objective:"legitermoose.misc"},color:gold},{text:" ᴘʟᴀʏᴇʀ ᴏɴʟɪɴᴇ ᴀᴄʀᴏꜱꜱ ",color:green},{score:{name:".online_worlds",objective:"legitermoose.misc"},color:gold},{text:" ᴡᴏʀʟᴅ.",color:green}]