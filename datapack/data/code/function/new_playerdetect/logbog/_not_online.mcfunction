scoreboard players set .logbog_online playerdetect 0
scoreboard players set .logbog_seen playerdetect 0

execute positioned 40 69 -36 run tellraw @a[distance=..12] {text:"Lᴏɢʙᴏɢ ɪꜱ ɴᴏᴛ ᴏɴʟɪɴᴇ.",color:red}