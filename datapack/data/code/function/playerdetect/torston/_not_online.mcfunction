scoreboard players set .torston_online playerdetect 0
scoreboard players set .torston_seen playerdetect 0

execute positioned 40 69 -12 run tellraw @a[distance=..12] {text:"T0ʀꜱᴛᴏɴ ɪꜱ ɴᴏᴛ ᴏɴʟɪɴᴇ.",color:red}

data modify entity @n[type=text_display,tag=torston_status] text.extra[1].text set value "ᴏꜰꜰʟɪɴᴇ"
data modify entity @n[type=text_display,tag=torston_status] text.extra[1].color set value "red"

data modify entity @n[type=text_display,tag=torston_world] text.extra[0] set value {text:"",color:"dark_gray"}
data modify entity @n[type=text_display,tag=torston_world] text.text set value "T0ʀꜱᴛᴏɴ ɪꜱ ɴᴏᴛ ᴏɴʟɪɴᴇ"