scoreboard players set .logbog_online playerdetect 0
scoreboard players set .logbog_seen playerdetect 0

execute positioned 40 69 -36 run tellraw @a[distance=..12] {text:"Lᴏɢʙᴏɢ ɪꜱ ɴᴏᴛ ᴏɴʟɪɴᴇ.",color:red}

data modify entity @n[type=text_display,tag=logbog_status] text.extra[1].text set value "ᴏꜰꜰʟɪɴᴇ"
data modify entity @n[type=text_display,tag=logbog_status] text.extra[1].color set value "red"

data modify entity @n[type=text_display,tag=logbog_world] text.extra[0] set value {text:"",color:"dark_gray"}
data modify entity @n[type=text_display,tag=logbog_world] text.text set value "Lᴏɢʙᴏɢ ɪꜱ ɴᴏᴛ ᴏɴʟɪɴᴇ"