scoreboard players set .arvelyx_online playerdetect 0
scoreboard players set .arvelyx_seen playerdetect 0

execute positioned 40 69 -44 run tellraw @a[distance=..12] {text:"Aʀᴠᴇʟʏx ɪꜱ ɴᴏᴛ ᴏɴʟɪɴᴇ.",color:red}