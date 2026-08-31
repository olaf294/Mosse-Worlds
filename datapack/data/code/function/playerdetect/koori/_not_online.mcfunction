scoreboard players set .koori_online playerdetect 0
scoreboard players set .koori_seen playerdetect 0

execute positioned 40 69 -20 run tellraw @a[distance=..12] {text:"KᴏᴏʀɪKɪᴛꜱᴜɴᴇ38 ɪꜱ ɴᴏᴛ ᴏɴʟɪɴᴇ.",color:red}

data modify entity @n[type=text_display,tag=koori_status] text.extra[1].text set value "ᴏꜰꜰʟɪɴᴇ"
data modify entity @n[type=text_display,tag=koori_status] text.extra[1].color set value "red"

data modify entity @n[type=text_display,tag=koori_world] text.extra[0] set value {text:"",color:"dark_gray"}
data modify entity @n[type=text_display,tag=koori_world] text.text set value "KᴏᴏʀɪKɪᴛꜱᴜɴᴇ38 ɪꜱ ɴᴏᴛ ᴏɴʟɪɴᴇ"