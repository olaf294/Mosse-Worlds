$execute as @a[scores={id=$(id)}] run function legitermoose:util/get_name

execute if data storage legitermoose:temp {find_player:{found_world_id:0}} run return run tellraw @s [{storage:"legitermoose:temp",nbt:playername,color:green,interpret:1b},{text:" ɪꜱ ɪɴ ʟᴏʙʙʏ",color:green}]
execute if data storage legitermoose:temp {find_player:{found_world_id:-1}} run return run tellraw @s [{storage:"legitermoose:temp",nbt:playername,color:green,interpret:1b},{text:" ɪꜱ ᴀᴛ ꜱᴘᴀᴡɴ",color:green}]

$tellraw @s [{storage:"legitermoose:temp",nbt:playername,color:dark_green,interpret:1b},{text:" ɪꜱ ɪɴ ",color:green},{storage:"legitermoose:worlds",nbt:"worlds[{world_id:$(found_world_id)}].name",interpret:1b},{text:" (Wᴏʀʟᴅ ID $(found_world_id))",color:green}]
