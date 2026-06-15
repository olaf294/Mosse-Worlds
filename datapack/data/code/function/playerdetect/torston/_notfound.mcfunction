# If T0rston is NOT online
tellraw @a[distance=..12] {text:"T0rston is not online.",color:red}

# Modify Entity
execute as @e[type=text_display,tag=torston_status] run data modify entity @n[type=text_display,tag=torston_status] text.extra[1].text set value "ᴏꜰꜰʟɪɴᴇ"
execute as @e[type=text_display,tag=torston_status] run data modify entity @n[type=text_display,tag=torston_status] text.extra[1].color set value "red"

data modify entity @n[type=text_display,tag=torston_world] text.extra[0] set value {text:"",color:"dark_gray"}
data modify entity @n[type=text_display,tag=torston_world] text.text set value "T0rston is not online"

# Set Score
scoreboard players set .torston_online playerdetect 0