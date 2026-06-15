# If Arvelyx is online
tellraw @a[distance=..12] [{text:"Arvelyx is online.",color:green},"\n",{text:"World: ",color:gold},{storage:player_detect,nbt:"a.response[{name:\"Arvelyx\"}].world",color:green}]

# Modify Entity
data modify entity @n[type=text_display,tag=arvelyx_status] text.extra[1].text set value "ᴏɴʟɪɴᴇ"
data modify entity @n[type=text_display,tag=arvelyx_status] text.extra[1].color set value "green"

# Get World UUID
data modify storage player_detect temp.a.uuid set from storage player_detect a.response[{name:"Arvelyx"}].world

# Send webhook to notify
execute if score .arvelyx_online playerdetect matches 0 run function code:playerdetect/arvelyx/send_webhook with storage player_detect http

function code:playerdetect/arvelyx/get_world with storage player_detect temp.a