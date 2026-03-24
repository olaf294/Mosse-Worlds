# If PolishKrowa is NOT online
tellraw @a[distance=..8] {text:"PolishKrowa is not online.",color:red}

# Modify Entity
execute as @e[type=text_display,tag=polish_status] run data modify entity @s text.extra[1].text set value "ᴏꜰꜰʟɪɴᴇ"
execute as @e[type=text_display,tag=polish_status] run data modify entity @s text.extra[1].color set value "red"

execute as @e[type=text_display,tag=polish_world] run data modify entity @s text.extra[0] set value {text:"",color:"dark_gray"}
execute as @e[type=text_display,tag=polish_world] run data modify entity @s text.text set value "PolishKrowa is not online"