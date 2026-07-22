execute unless data storage player_detect {a:{status_code:200}} run return run function code:playerdetect/_admin_error
execute if data storage player_detect {a:{status_code:200}} run tellraw @a[tag=is_admin,tag=!ignore] [{text:"(API) Rᴇꜱᴘᴏɴꜱᴇ: ",color:gray,hover_event:{action:show_text,value:"API - Dᴇᴛᴇᴄᴛ Pʟᴀʏᴇʀꜱ"}},{storage:player_detect,nbt:"a.status_code",color:dark_green}]

data modify storage player_detect a set from storage player_detect a.response

execute unless data storage player_detect a[{players:["Logbog"]}] run function code:new_playerdetect/logbog/_not_online
execute if data storage player_detect a[{players:["Logbog"]}] run scoreboard players set .logbog_online playerdetect 1

execute unless data storage player_detect a[{players:["Legitermoose"]}] run function code:new_playerdetect/moose/_not_online
execute if data storage player_detect a[{players:["Legitermoose"]}] run scoreboard players set .moose_online playerdetect 1

execute unless data storage player_detect a[{players:["PolishKrowa"]}] run function code:new_playerdetect/polish/_not_online
execute if data storage player_detect a[{players:["PolishKrowa"]}] run scoreboard players set .polish_online playerdetect 1

execute unless data storage player_detect a[{players:["Arvelyx"]}] run function code:new_playerdetect/arvelyx/_not_online
execute if data storage player_detect a[{players:["Arvelyx"]}] run scoreboard players set .arvelyx_online playerdetect 1

execute unless data storage player_detect a[{players:["mmmmmaaaaaxxxxx"]}] run function code:new_playerdetect/max/_not_online
execute if data storage player_detect a[{players:["mmmmmaaaaaxxxxx"]}] run scoreboard players set .max_online playerdetect 1

execute unless data storage player_detect a[{players:["KooriKitsune38"]}] run function code:new_playerdetect/koori/_not_online
execute if data storage player_detect a[{players:["KooriKitsune38"]}] run scoreboard players set .koori_online playerdetect 1

execute unless data storage player_detect a[{players:["T0rston"]}] run function code:new_playerdetect/torston/_not_online
execute if data storage player_detect a[{players:["T0rston"]}] run scoreboard players set .torston_online playerdetect 1

function code:new_playerdetect/send_webhooks