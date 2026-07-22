tellraw @s[scores={gamemode=0}] [{text:"» ",color:gray},{text:"ꜱᴇᴛ ᴏᴡɴ ɢᴀᴍᴇ ᴍᴏᴅᴇ ᴛᴏ ",color:green},{text:"ꜱᴜʀᴠɪᴠᴀʟ",color:gold},{text:" ᴍᴏᴅᴇ",color:green}]
tellraw @s[scores={gamemode=1}] [{text:"» ",color:gray},{text:"ꜱᴇᴛ ᴏᴡɴ ɢᴀᴍᴇ ᴍᴏᴅᴇ ᴛᴏ ",color:green},{text:"ᴄʀᴇᴀᴛɪᴠᴇ",color:gold},{text:" ᴍᴏᴅᴇ",color:green}]
tellraw @s[scores={gamemode=2}] [{text:"» ",color:gray},{text:"ꜱᴇᴛ ᴏᴡɴ ɢᴀᴍᴇ ᴍᴏᴅᴇ ᴛᴏ ",color:green},{text:"ᴀᴅᴠᴇɴᴛᴜʀᴇ",color:gold},{text:" ᴍᴏᴅᴇ",color:green}]
tellraw @s[scores={gamemode=3}] [{text:"» ",color:gray},{text:"ꜱᴇᴛ ᴏᴡɴ ɢᴀᴍᴇ ᴍᴏᴅᴇ ᴛᴏ ",color:green},{text:"ꜱᴘᴇᴄᴛᴀᴛᴏʀ",color:gold},{text:" ᴍᴏᴅᴇ",color:green}]

execute as @s[scores={gamemode=0}] run gamemode survival @s
execute as @s[scores={gamemode=1}] run gamemode creative @s
execute as @s[scores={gamemode=2}] run gamemode adventure @s
execute as @s[scores={gamemode=3}] run gamemode spectator @s


data modify storage legitermoose:temp switch_gm.UUID set from entity @s UUID
execute store result storage legitermoose:temp switch_gm.id int 1 run scoreboard players get @s worldid
execute store result storage legitermoose:temp switch_gm.gm int 1 run scoreboard players get @s gamemode

scoreboard players set @s gamemode -2

function legitermoose:triggers/gamemode/change_gamemode with storage legitermoose:temp switch_gm