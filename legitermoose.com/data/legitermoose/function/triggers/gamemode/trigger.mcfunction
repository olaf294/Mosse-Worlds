tellraw @s[scores={gamemode=-1}] [{text:"» ",color:gray},{text:"ɢᴀᴍᴇ ᴍᴏᴅᴇ ᴏᴠᴇʀᴠɪᴇᴡ:\n",color:green},{text:" 0 = ꜱᴜʀᴠɪᴠᴀʟ\n 1 = ᴄʀᴇᴀᴛɪᴠᴇ\n 2 = ᴀᴅᴠᴇɴᴛᴜʀᴇ\n 3 = ꜱᴘᴇᴄᴛᴀᴛᴏʀ",color:yellow}]

tellraw @s[scores={gamemode=0}] [{text:"» ",color:gray},{text:"Sᴇᴛ ᴏᴡɴ ɢᴀᴍᴇ ᴍᴏᴅᴇ ᴛᴏ ",color:green},{text:"ꜱᴜʀᴠɪᴠᴀʟ",color:gold},{text:" ᴍᴏᴅᴇ",color:green}]
tellraw @s[scores={gamemode=1}] [{text:"» ",color:gray},{text:"Sᴇᴛ ᴏᴡɴ ɢᴀᴍᴇ ᴍᴏᴅᴇ ᴛᴏ ",color:green},{text:"ᴄʀᴇᴀᴛɪᴠᴇ",color:gold},{text:" ᴍᴏᴅᴇ",color:green}]
tellraw @s[scores={gamemode=2}] [{text:"» ",color:gray},{text:"Sᴇᴛ ᴏᴡɴ ɢᴀᴍᴇ ᴍᴏᴅᴇ ᴛᴏ ",color:green},{text:"ᴀᴅᴠᴇɴᴛᴜʀᴇ",color:gold},{text:" ᴍᴏᴅᴇ",color:green}]
tellraw @s[scores={gamemode=3}] [{text:"» ",color:gray},{text:"Sᴇᴛ ᴏᴡɴ ɢᴀᴍᴇ ᴍᴏᴅᴇ ᴛᴏ ",color:green},{text:"ꜱᴘᴇᴄᴛᴀᴛᴏʀ",color:gold},{text:" ᴍᴏᴅᴇ",color:green}]

gamemode survival @s[scores={gamemode=0}]
gamemode creative @s[scores={gamemode=1}]
gamemode adventure @s[scores={gamemode=2}]
gamemode spectator @s[scores={gamemode=3}]


data modify storage legitermoose:temp switch_gm.UUID set from entity @s UUID
execute store result storage legitermoose:temp switch_gm.id int 1 run scoreboard players get @s worldid
execute store result storage legitermoose:temp switch_gm.gm int 1 run scoreboard players get @s gamemode

scoreboard players set @s gamemode -2

function legitermoose:triggers/gamemode/change_gamemode with storage legitermoose:temp switch_gm