# If Logbog is online
tellraw @a [{text:"Logbog is online.",color:green},"\n",{text:"World: ",color:gold},{storage:player_detect,nbt:"a.response[{name:\"Logbog\"}].world",color:green}]

# Modify Entity
execute as @e[type=text_display,tag=logbog_status] run data modify entity @s text.extra[1].text set value "ᴏɴʟɪɴᴇ"
execute as @e[type=text_display,tag=logbog_status] run data modify entity @s text.extra[1].color set value "green"

# Get World UUID
data modify storage player_detect temp.a.uuid set from storage player_detect a.response[{name:"Logbog"}].world

# Send webhook to notify
function code:playerdetect/logbog/send_webhook with storage player_detect http

function code:playerdetect/logbog/get_world with storage player_detect temp.a