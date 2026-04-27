# If Arvelyx is online
tellraw @a[distance=..10] [{text:"Arvelyx is online.",color:green},"\n",{text:"World: ",color:gold},{storage:player_detect,nbt:"a.response[{name:\"Arvelyx\"}].world",color:green}]

# Modify Entity
execute as @e[type=text_display,tag=arvelyx_status] run data modify entity @s text.extra[1].text set value "ᴏɴʟɪɴᴇ"
execute as @e[type=text_display,tag=arvelyx_status] run data modify entity @s text.extra[1].color set value "green"

# Get World UUID
data modify storage player_detect temp.a.uuid set from storage player_detect a.response[{name:"Arvelyx"}].world

function code:playerdetect/arvelyx/get_world with storage player_detect temp.a