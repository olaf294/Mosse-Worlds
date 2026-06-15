# If Logbog is NOT online
tellraw @a[distance=..12] {text:"Logbog is not online.",color:red}

# Modify Entity
data modify entity @n[type=text_display,tag=logbog_status] text.extra[1].text set value "ᴏꜰꜰʟɪɴᴇ"
data modify entity @n[type=text_display,tag=logbog_status] text.extra[1].color set value "red"

data modify entity @n[type=text_display,tag=logbog_world] text.extra[0] set value {text:"",color:"dark_gray"}
data modify entity @n[type=text_display,tag=logbog_world] text.text set value "Logbog is not online"

# Set Score
scoreboard players set .logbog_online playerdetect 0