scoreboard players set .moose_online playerdetect 0
scoreboard players set .moose_seen playerdetect 0

execute positioned 9 64 -15 run tellraw @a[distance=..12] {text:"Lᴇɢɪᴛᴇʀᴍᴏᴏꜱᴇ ɪꜱ ɴᴏᴛ ᴏɴʟɪɴᴇ.",color:red}

data modify entity @n[type=text_display,tag=moss_status] text.extra[1].text set value "ᴏꜰꜰʟɪɴᴇ"
data modify entity @n[type=text_display,tag=moss_status] text.extra[1].color set value "red"

data modify entity @n[type=text_display,tag=moss_world] text.extra[0] set value {text:"",color:"dark_gray"}
data modify entity @n[type=text_display,tag=moss_world] text.text set value "Legitermoose is not online"