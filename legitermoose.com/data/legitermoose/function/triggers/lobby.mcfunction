tp @s 1000 64 0

tellraw @s [{text:"Connecting to legitermoose.com...",color:gray}]

execute as @s run playsound block.note_block.pling ui @s ~ ~ ~ 1 2
tellraw @s [{text:"Wᴇʟᴄᴏᴍᴇ ᴛᴏ ",color:gold},{text:"ʟᴇɢɪᴛᴇʀᴍᴏᴏꜱᴇ.ᴄᴏᴍ",color:"#00AAFF",underlined:1b},{text:"! ",color:gold,underlined:0b},"\n",{text:"Cᴏɴɴᴇᴄᴛᴇᴅ ᴛᴏ: ",color:dark_green},{text:"ʟᴏʙʙʏ",color:green}]

execute unless entity @s[tag=legitermoose.is_playing] run function legitermoose:lobby/join/rank_join

execute if entity @s[tag=legitermoose.lobby.gmsp] run gamemode spectator @s
execute if entity @s[tag=legitermoose.lobby.gmc] run gamemode creative @s
execute if entity @s[tag=legitermoose.lobby.gms] run gamemode survival @s
execute if entity @s[tag=legitermoose.lobby.gma] run gamemode adventure @s

scoreboard players add .visits legitermoose.misc 1

clear @s *
effect clear @s
item replace entity @s player.cursor with air

inventory @s close