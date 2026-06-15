# If KooriKitsune38 is online
tellraw @a[distance=..12] [{text:"KooriKitsune38 is online.",color:green},"\n",{text:"World: ",color:gold},{storage:player_detect,nbt:"a.response[{name:\"KooriKitsune38\"}].world",color:green}]

# Modify Entity
data modify entity @n[type=text_display,tag=koori_status] text.extra[1].text set value "ᴏɴʟɪɴᴇ"
data modify entity @n[type=text_display,tag=koori_status] text.extra[1].color set value "green"

# Get World UUID
data modify storage player_detect temp.a.uuid set from storage player_detect a.response[{name:"KooriKitsune38"}].world

# Send webhook to notify
execute if score .koori_online playerdetect matches 0 run function code:playerdetect/koori/send_webhook with storage player_detect http

function code:playerdetect/koori/get_world with storage player_detect temp.a