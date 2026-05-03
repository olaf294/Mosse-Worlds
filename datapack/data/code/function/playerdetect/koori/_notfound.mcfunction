# If KooriKitsune38 is NOT online
tellraw @a[distance=..12] {text:"KooriKitsune38 is not online.",color:red}

# Modify Entity
execute as @e[type=text_display,tag=koori_status] run data modify entity @s text.extra[1].text set value "ᴏꜰꜰʟɪɴᴇ"
execute as @e[type=text_display,tag=koori_status] run data modify entity @s text.extra[1].color set value "red"

execute as @e[type=text_display,tag=koori_world] run data modify entity @s text.extra[0] set value {text:"",color:"dark_gray"}
execute as @e[type=text_display,tag=koori_world] run data modify entity @s text.text set value "KooriKitsune38 is not online"

# Set Score
scoreboard players set .koori_online playerdetect 0