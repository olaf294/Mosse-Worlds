scoreboard players set .logbog_online playerdetect 0
scoreboard players set .logbog_seen playerdetect 0

execute positioned 40 69 -36 run tellraw @a[distance=..12] {text:"Lᴏɢʙᴏɢ ɪꜱ ɴᴏᴛ ᴏɴʟɪɴᴇ.",color:red}

data modify entity @e[type=text_display,tag=logbog_status,limit=1] text.extra[1].text set value "ᴏꜰꜰʟɪɴᴇ"
data modify entity @e[type=text_display,tag=logbog_status,limit=1] text.extra[1].color set value "red"

data modify entity @e[type=text_display,tag=logbog_world,limit=1] text.extra[0] set value {text:"",color:"dark_gray"}
data modify entity @e[type=text_display,tag=logbog_world,limit=1] text.text set value "Lᴏɢʙᴏɢ ɪꜱ ɴᴏᴛ ᴏɴʟɪɴᴇ"