# If mmmmmaaaaaxxxxx is NOT online
tellraw @a[distance=..12] {text:"mmmmmaaaaaxxxxx is not online.",color:red}

# Modify Entity
data modify entity @n[type=text_display,tag=max_status] text.extra[1].text set value "ᴏꜰꜰʟɪɴᴇ"
data modify entity @n[type=text_display,tag=max_status] text.extra[1].color set value "red"

data modify entity @n[type=text_display,tag=max_world] text.extra[0] set value {text:"",color:"dark_gray"}
data modify entity @n[type=text_display,tag=max_world] text.text set value "mmmmmaaaaaxxxxx is not online"

# Set Score
scoreboard players set .max_online playerdetect 0