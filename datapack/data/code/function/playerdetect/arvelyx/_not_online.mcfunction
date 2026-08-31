scoreboard players set .arvelyx_online playerdetect 0
scoreboard players set .arvelyx_seen playerdetect 0

execute positioned 40 69 -44 run tellraw @a[distance=..12] {text:"Aʀᴠᴇʟʏx ɪꜱ ɴᴏᴛ ᴏɴʟɪɴᴇ.",color:red}

data modify entity @n[type=text_display,tag=arvelyx_status] text.extra[1].text set value "ᴏꜰꜰʟɪɴᴇ"
data modify entity @n[type=text_display,tag=arvelyx_status] text.extra[1].color set value "red"

data modify entity @n[type=text_display,tag=arvelyx_world] text.extra[0] set value {text:"",color:"dark_gray"}
data modify entity @n[type=text_display,tag=arvelyx_world] text.text set value "Aʀᴠᴇʟʏx ɪꜱ ɴᴏᴛ ᴏɴʟɪɴᴇ"