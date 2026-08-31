scoreboard players set .polish_online playerdetect 0
scoreboard players set .polish_seen playerdetect 0

execute positioned 9 64 -23 run tellraw @a[distance=..12] {text:"PᴏʟɪꜱʜKʀᴏᴡᴀ ɪꜱ ɴᴏᴛ ᴏɴʟɪɴᴇ.",color:red}


data modify entity @n[type=text_display,tag=polish_status] text.extra[1].text set value "ᴏꜰꜰʟɪɴᴇ"
data modify entity @n[type=text_display,tag=polish_status] text.extra[1].color set value "red"

data modify entity @n[type=text_display,tag=polish_world] text.extra[0] set value {text:"",color:"dark_gray"}
data modify entity @n[type=text_display,tag=polish_world] text.text set value "PᴏʟɪꜱʜKʀᴏᴡᴀ ɪꜱ ɴᴏᴛ ᴏɴʟɪɴᴇ"