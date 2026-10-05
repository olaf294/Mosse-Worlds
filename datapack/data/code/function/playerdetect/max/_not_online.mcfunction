scoreboard players set .max_online playerdetect 0
scoreboard players set .max_seen playerdetect 0

execute positioned 40 69 -28 run tellraw @a[distance=..12] {text:"ᴍᴍᴍᴍᴍᴀᴀᴀᴀᴀxxxxx ɪꜱ ɴᴏᴛ ᴏɴʟɪɴᴇ.",color:red}

data modify entity @e[type=text_display,tag=max_status,limit=1] text.extra[1].text set value "ᴏꜰꜰʟɪɴᴇ"
data modify entity @e[type=text_display,tag=max_status,limit=1] text.extra[1].color set value "red"

data modify entity @e[type=text_display,tag=max_world,limit=1] text.extra[0] set value {text:"",color:"dark_gray"}
data modify entity @e[type=text_display,tag=max_world,limit=1] text.text set value "ᴍᴍᴍᴍᴍᴀᴀᴀᴀᴀxxxxx ɪꜱ ɴᴏᴛ ᴏɴʟɪɴᴇ"