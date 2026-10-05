item fill entity @s enderchest.* with light_gray_stained_glass_pane[custom_data={custom_ui:1b},tooltip_display={hide_tooltip:true},item_model="air",max_stack_size=1]
function legitermoose:util/get_name

tag @s add inv
scoreboard players set $tmp ui -1
execute as @a[sort=nearest] run function legitermoose:triggers/listall/init_loop
tag @s remove inv

inventory @s enderchest @s <reset>          Oɴʟɪɴᴇ Pʟᴀʏᴇʀꜱ

# get online worlds
data remove storage legitermoose:temp online_worlds
execute as @a run function legitermoose:util/get_online_worlds
execute store result score .online_worlds legitermoose.misc if data storage legitermoose:temp online_worlds.worlds[]

# correct grammar messsage
execute unless score .players misc matches 1 unless score .online_worlds legitermoose.misc matches 1 run return run tellraw @s [{score:{name:".players",objective:"misc"},color:gold},{text:" ᴘʟᴀʏᴇʀꜱ ᴏɴʟɪɴᴇ ᴀᴄʀᴏꜱꜱ ",color:green},{score:{name:".online_worlds",objective:"legitermoose.misc"},color:gold},{text:" ᴡᴏʀʟᴅꜱ.",color:green}]
execute unless score .players misc matches 1 if score .online_worlds legitermoose.misc matches 1 run return run tellraw @s [{score:{name:".players",objective:"misc"},color:gold},{text:" ᴘʟᴀʏᴇʀꜱ ᴏɴʟɪɴᴇ ᴀᴄʀᴏꜱꜱ ",color:green},{score:{name:".online_worlds",objective:"legitermoose.misc"},color:gold},{text:" ᴡᴏʀʟᴅ.",color:green}]
tellraw @s [{score:{name:".players",objective:"misc"},color:gold},{text:" ᴘʟᴀʏᴇʀ ᴏɴʟɪɴᴇ ᴀᴄʀᴏꜱꜱ ",color:green},{score:{name:".online_worlds",objective:"legitermoose.misc"},color:gold},{text:" ᴡᴏʀʟᴅ.",color:green}]