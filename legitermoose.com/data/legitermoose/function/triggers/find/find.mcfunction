scoreboard players reset @s find
$execute unless entity @a[scores={id=$(id)}] run return run tellraw @s [{text:"Pʟᴀʏᴇʀ ᴄᴏᴜʟᴅ ɴᴏᴛ ʙᴇ ꜰᴏᴜɴᴅ.",color:red}]

$execute as @a[scores={id=$(id)}] store result storage legitermoose:temp find_player.found_world_id int 1 run scoreboard players get @s worldid
function legitermoose:triggers/find/display_world with storage legitermoose:temp find_player