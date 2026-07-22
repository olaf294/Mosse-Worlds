scoreboard players set .torston_online playerdetect 0
scoreboard players set .torston_seen playerdetect 0

execute positioned 40 69 -12 run tellraw @a[distance=..12] {text:"T0ʀꜱᴛᴏɴ ɪꜱ ɴᴏᴛ ᴏɴʟɪɴᴇ.",color:red}