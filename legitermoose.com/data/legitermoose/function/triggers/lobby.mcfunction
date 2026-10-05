tp @s 1000 64 0 90 0

tellraw @s [{text:"Connecting to legitermoose.com...",color:gray}]

execute at @s run playsound block.note_block.pling ui @s ~ ~ ~ 1 2
tellraw @s [{text:"Wᴇʟᴄᴏᴍᴇ ᴛᴏ ",color:gold},{text:"ʟᴇɢɪᴛᴇʀᴍᴏᴏꜱᴇ.ᴄᴏᴍ",color:"#00AAFF",underlined:1b},{text:"! ",color:gold,underlined:0b},"\n",{text:"Cᴏɴɴᴇᴄᴛᴇᴅ ᴛᴏ: ",color:dark_green},{text:"ʟᴏʙʙʏ",color:green}]

execute unless entity @s[tag=legitermoose.is_playing] run function legitermoose:lobby/join/rank_join

scoreboard players add .visits legitermoose.misc 1

item fill entity @s code:all_slots with air
effect clear @s

team join player @s[team=z_spawn]

inventory @s close