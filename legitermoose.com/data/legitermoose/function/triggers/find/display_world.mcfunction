$execute as @a[scores={id=$(id)}] run function legitermoose:util/get_name

execute if data storage legitermoose:temp {find_player:{found_world_id:-8}} run return run tellraw @s [{storage:"legitermoose:temp",nbt:playername,color:green},{text:" ɪꜱ ɪɴ ",color:green},{text:"ʟᴏʙʙʏ",color:green}]

$tellraw @s [{storage:"legitermoose:temp",nbt:playername,color:dark_green},{text:" ɪꜱ ɪɴ ",color:green},{storage:"legitermoose:worlds",nbt:"worlds[{world_id:$(found_world_id)}].name",interpret:1b},{text:" (Wᴏʀʟᴅ ID $(found_world_id))",color:green}]
