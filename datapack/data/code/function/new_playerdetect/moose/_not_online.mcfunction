scoreboard players set .moose_online playerdetect 0
scoreboard players set .moose_seen playerdetect 0

execute positioned 9 64 -15 run tellraw @a[distance=..12] {text:"Lᴇɢɪᴛᴇʀᴍᴏᴏꜱᴇ ɪꜱ ɴᴏᴛ ᴏɴʟɪɴᴇ.",color:red}